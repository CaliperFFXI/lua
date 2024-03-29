-------------------------------------------------------------------------------------------------------------------
-- Utility include for applying and tracking Treasure Hunter effects.
-- Create a macro or keybind to cycle the Treasure Mode value:
-- gs c cycle TreasureMode
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- Setup vars and events when first running the include.
-------------------------------------------------------------------------------------------------------------------

-- Ensure base tables are defined
-- options = options or {}
-- state = state or {}
-- info = info or {}

state.TreasureMode = M{['description']='Treasure Mode'}

-- TH mode handling
if player.main_job == 'THF' then
	state.TreasureMode:options('None','Tag','SATA','Fulltime')
	state.TreasureMode:set('Tag')
else
	state.TreasureMode:options('None','Tag')
end

-- Tracking vars for TH.
info.tagged_mobs = T{}
info.last_player_target_index = 0
state.th_gear_is_locked = false

-- For th_action_check():
-- AoE MA IDs for actions that always have TH: Diaga
info.th_ma_ids = S{33, 34}
-- AoE WS IDs for actions that always have TH in TH mode: Cyclone, Aeolian Edge
info.th_ws_ids = S{20, 30}
-- JA IDs for actions that always have TH: Provoke, Animated Flourish (Should all be handled in aftercast, kept for notes: 35, 204)
info.th_ja_ids = S{}
-- Unblinkable JA IDs for actions that always have TH: Quick/Box/Stutter Step, Desperate/Violent Flourish (Should all be handled in aftercast, kept for notes: 201, 202, 203, 205, 207)
info.th_u_ja_ids = S{}
-- Required gear set.  Expand this in the job file when defining sets.
sets.TreasureHunter = {}

-- Event registration is done at the bottom of this file.

-------------------------------------------------------------------------------------------------------------------
-- User-callable functions for TH handling utility.
-------------------------------------------------------------------------------------------------------------------

-- Can call to force a status refresh.
-- Also displays the current tagged mob table if in debug mode.
function th_update(cmdParams, eventArgs)
	if (cmdParams and cmdParams[1] == 'user') or not cmdParams then
		TH_for_first_hit()
	
		if _settings.debug_mode then
			print_set(info.tagged_mobs, 'Tagged mobs')
		end
	end
end

-------------------------------------------------------------------------------------------------------------------
-- Local functions to support TH handling.
-------------------------------------------------------------------------------------------------------------------

-- Set locked TH flag to true, and disable relevant gear slots.
function lock_TH()
	state.th_gear_is_locked = true
	local slots = T{}
	for slot,item in pairs(sets.TreasureHunter) do
		slots:append(slot)
	end
	disable(slots)
end

-- Set locked TH flag to false, and enable relevant gear slots.
function unlock_TH()
	if state.TreasureMode.value == 'None' then return end --Mod
	state.th_gear_is_locked = false
	local slots = T{}
	for slot,item in pairs(sets.TreasureHunter) do
		slots:append(slot)
	end
	enable(slots)
	send_command('gs c update auto')
end

-- For any active TH mode, if we haven't already tagged this target, equip TH gear and lock slots until we manage to hit it.
function TH_for_first_hit()
	if player.status == 'Engaged'  and state.TreasureMode.value ~= 'None' and state.DefenseMode.value == 'None' then
		if not info.tagged_mobs[player.target.id] then
			if _settings.debug_mode then add_to_chat(123,'Prepping for first hit on '..tostring(player.target.id)..'.') end
			equip(sets.TreasureHunter)
			lock_TH()
		elseif state.th_gear_is_locked then
			if _settings.debug_mode then add_to_chat(123,'Target '..player.target.id..' has been tagged.  Unlocking.') end
			unlock_TH()
		else
			if _settings.debug_mode then add_to_chat(123,'Prepping for first hit on '..player.target.id..'.  Target has already been tagged.') end
		end
	else
		unlock_TH()
	end
end

-------------------------------------------------------------------------------------------------------------------
-- Event handlers to allow tracking TH application.
-------------------------------------------------------------------------------------------------------------------

-- On engaging a mob, attempt to add TH gear.  For any other status change, unlock TH gear slots.
function on_status_change_for_th(new_status_id, old_status_id)
	if not (gearswap and gearswap.res and gearswap.res.statuses and new_status_id and old_status_id) then return end
    if gearswap.gearswap_disabled or T{2,3,4}:contains(old_status_id) or T{2,3,4}:contains(new_status_id) then return end
	
    local new_status = gearswap.res.statuses[new_status_id].english or 'None'
    local old_status = gearswap.res.statuses[old_status_id].english or 'None'
	
	-- 1 Is the status ID for Engaged.
    if new_status == 'Engaged' then
		if _settings.debug_mode then add_to_chat(123,'Engaging '..player.target.id..'.') end
		info.last_player_target_index = player.target.index
		TH_for_first_hit()
    elseif old_status == 'Engaged' then
		if _settings.debug_mode and state.th_gear_is_locked then add_to_chat(123,'Disengaging. Unlocking TH.') end
		info.last_player_target_index = 0
		unlock_TH()
	end
end

-- On changing targets, attempt to add TH gear.
function on_target_change_for_th(new_index, old_index)
	-- Only care about changing targets while we're engaged, either manually or via current target death.
	if player.status == 'Engaged' then
		-- If  the current player.target is the same as the new mob then we're actually
		-- engaged with it.
		-- If it's different than the last known mob, then we've actually changed targets.
		if player.target.index == new_index and new_index ~= info.last_player_target_index then
			if _settings.debug_mode then add_to_chat(123,'Changing target to '..player.target.id..'.') end
			info.last_player_target_index = player.target.index
			TH_for_first_hit()
		end
	end
end

-- On any action event, mark mobs that we tag with TH.  Also, update the last time tagged mobs were acted on.
function on_action_for_th(action)
	-- Debug to spit out the action and param for adding specific actions to override logid
	if _settings.debug_mode then add_to_chat(123,'cat='..action.category..',param='..action.param) end
	-- If player takes action, adjust TH tagging information
	if not action then return end --protection from errors
	if state.TreasureMode.value ~= 'None' then
		if action.actor_id == player.id then
			-- category == 1=melee, 2=ranged, 3=weaponskill, 4=spell, 6=job ability, 14=unblinkable JA
			if state.TreasureMode.value == 'Fulltime' or
			   (state.TreasureMode.value == 'SATA' and (action.category == 1 or ((state.Buff['Sneak Attack'] or state.Buff['Trick Attack']) and action.category == 3))) or
			   (state.TreasureMode.value == 'Tag' and (action.category == 1 or action.category == 4) and state.th_gear_is_locked) or -- Tagging with a melee hit
			   (th_action_check and th_action_check(action.category, action.param)) -- Any user-specified tagging actions
			   then
				for index,target in pairs(action.targets) do
					if not info.tagged_mobs[target.id] and _settings.debug_mode then
						add_to_chat(123,'Mob '..target.id..' hit. Adding to tagged mobs table.')
					end
					info.tagged_mobs[target.id] = os.time()
				end
	
				if state.th_gear_is_locked then
					unlock_TH()
				end
			end
		elseif info.tagged_mobs[action.actor_id] then
			-- If mob acts, keep an update of last action time for TH bookkeeping
			info.tagged_mobs[action.actor_id] = os.time()
		else
			-- If anyone else acts, check if any of the targets are our tagged mobs
			for index,target in pairs(action.targets) do
				if info.tagged_mobs[target.id] then
					info.tagged_mobs[target.id] = os.time()
				end
			end
		end
	end
	
	cleanup_tagged_mobs()
end

-- Need to use this event handler to listen for deaths in case Battlemod is loaded,
-- because Battlemod blocks the 'action message' event.

-- Modifying this function for AoE TH Applying Actions, single targets now handled in aftercast.
function th_action_check(category, param)
	if category == 2 or -- any ranged attack
		(category == 4 	and info.th_ma_ids:contains(param)) or  -- Dia/Bio
		(category == 3 	and info.th_ws_ids:contains(param)) or  -- Aeolian Edge
		(category == 6 	and info.th_ja_ids:contains(param)) or  -- Provoke, Animated Flourish
		(category == 14 and info.th_u_ja_ids:contains(param))	-- Quick/Box/Stutter Step, Desperate/Violent Flourish
		then return true
	end
end

-- Need to use this event handler to listen for deaths in case Battlemod is loaded,
-- because Battlemod blocks the 'action message' event.

-- This function removes mobs from our tracking table when they die.
function on_incoming_chunk_for_th(id, data, modified, injected, blocked)
	if id == 0x29 then
		local target_id = data:unpack('I',0x09)
		local message_id = data:unpack('H',0x19)%32768

		-- Remove mobs that die from our tagged mobs list.
		if message_id == 6 or message_id == 20 then
			if being_attacked and not player.in_combat then
				being_attacked = false
				if player.status == 'Idle' and not midaction() and not pet_midaction() then
					send_command('gs c forceequip')
				end
			end
			-- 6 == actor defeats target
			-- 20 == target falls to the ground
			if info.tagged_mobs[target_id] then
				if _settings.debug_mode then add_to_chat(123,'Mob '..target_id..' died. Removing from tagged mobs table.') end
				info.tagged_mobs[target_id] = nil
			end
		end
	end
end

-- Clear out the entire tagged mobs table when zoning.
function on_zone_change_for_th(new_zone, old_zone)
	if _settings.debug_mode then add_to_chat(123,'Zoning. Clearing tagged mobs table.') end
	info.tagged_mobs:clear()
end

-- Save the existing function, if it exists, and call it after our own handling.
if job_state_change then
	job_state_change_via_th = job_state_change
end

-- Called if we change any user state fields.
function job_state_change(stateField, newValue, oldValue)
	if stateField == 'Treasure Mode' then
		if newValue == 'None' and state.th_gear_is_locked then
			if _settings.debug_mode then add_to_chat(123,'TH Mode set to None. Unlocking gear.') end
			unlock_TH()
		elseif oldValue == 'None' then
			TH_for_first_hit()
		end
	elseif stateField == 'Defense Mode' then
		if state.DefenseMode.value == 'None' then
			TH_for_first_hit()
		else
			unlock_TH()
		end
	end
	
	if job_state_change_via_th then
		job_state_change_via_th(stateField, newValue, oldValue)
	end
end

-------------------------------------------------------------------------------------------------------------------
-- Extra utility functions.
-------------------------------------------------------------------------------------------------------------------

-- Remove mobs that we've marked as tagged with TH if we haven't seen any activity from or on them
-- for over 3 minutes.  This is to handle deagros, player deaths, or other random stuff where the
-- mob is lost, but doesn't die.
function cleanup_tagged_mobs()
	-- If it's been more than 3 minutes since an action on or by a tagged mob,
	-- remove them from the tagged mobs list.
	local current_time = os.time()
	local remove_mobs = S{}
	-- Search list and flag old entries.
	for target_id,action_time in pairs(info.tagged_mobs) do
		local time_since_last_action = current_time - action_time
		if time_since_last_action > 180 then
			remove_mobs:add(target_id)
			if _settings.debug_mode then add_to_chat(123,'Over 3 minutes since last action on mob '..target_id..'. Removing from tagged mobs list.') end
		end
	end
	-- Clean out mobs flagged for removal.
	for mob_id,_ in pairs(remove_mobs) do
		info.tagged_mobs[mob_id] = nil
	end
end


-------------------------------------------------------------------------------------------------------------------
-- Event function registration calls.
-- Can call these now that the above functions have been defined.
-------------------------------------------------------------------------------------------------------------------

-- Register events to allow us to manage TH application.
windower.register_event('status change', on_status_change_for_th)
windower.register_event('target change', on_target_change_for_th)
windower.raw_register_event('action', on_action_for_th)
windower.raw_register_event('incoming chunk', on_incoming_chunk_for_th)
windower.raw_register_event('zone change', on_zone_change_for_th)

