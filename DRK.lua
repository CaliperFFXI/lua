-- Original: Motenten / Arislan Modified: Caliper -of- Asura 
-- File Version 1.0 rev 0

function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()

	state.Buff['Silence'] = buffactive.Silence or false
	state.Buff['Berserk'] = buffactive.Berserk or false
	state.Buff['Seigan'] = buffactive.Seigan or false
	state.Buff['Arcane Circle'] = buffactive.ArcaneCircle or false
	state.Buff['Souleater'] = buffactive.Souleater or false
	state.Buff['Hasso'] = buffactive.Hasso or false
	state.Buff['Seigan'] = buffactive.Seigan or false
	state.Buff['Stoneskin'] = buffactive.Stoneskin or false
	state.Buff['Dark Seal'] = buffactive.DarkSeal or false
	state.Buff['Nether Void'] = buffactive.NetherVoid or false
	state.Buff['Aftermath'] = buffactive.AM or false
	state.Buff["Aftermath: Lv.1"] = buffactive.AM1 or false
	state.Buff["Aftermath: Lv.2"] = buffactive.AM2 or false
	state.Buff["Aftermath: Lv.3"] = buffactive.AM3 or false
	
	state.DualWield = M(false, 'Dual Wield Mode')
	state.WeaponLock = M(false, 'Weapon Lock')	
	state.CP = M(false, 'Capacity Points Mode')
    state.warned = M(false)
	
	-- order of weapons is determined as they appear in this table
	state.WeaponSet = M{['description']='Weapon Set','Apocalypse','Caladbolg'}
	elemental_ws = S{'Infernal Scythe','Dark Harvest','Shadow of Death'}
	
	-- ws_elements = {}
    -- ws_elements.Resolution = S{'Lightning','Wind','Earth'}
    -- ws_elements.Scourge = S{'Light','Fire'}
    -- ws_elements.Torcleaver = S{'Light','Water','Ice'}
    -- ws_elements.Catastrophe = S{'Dark','Earth'}
    -- ws_elements.Entropy = S{'Dark','Water','Earth'}
    -- ws_elements.Insurgency = S{'Light','Dark','Fire'}
    -- ws_elements.Quietus = S{'Light','Water','Ice'}
    -- ws_elements['Cross Reaper'] = S{'Water','Ice'}

	--place weaponskills in this table to be used with lugra swaps 
    lugra_ws = S{''}
end

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('Normal','STP','Acc')
    state.CastingMode:options('Normal','Acc','HighAcc')
    state.HybridMode:options('Normal','DT')
    state.RangedMode:options('Normal','Acc')
    state.WeaponskillMode:options('Normal','Acc','HighAcc','FullTP')
    state.IdleMode:options('Normal','Refresh')
	
	options.ninja_tool_warning_limit = 10
end

function job_pretarget(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		eventArgs.cancel = true 
        send_command('input /item "Echo Drops" <me>')
    elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
		eventArgs.cancel = true 
        send_command('/ja Aggressor <me>')
    elseif spell.english == "Seigan" and buffactive.Seigan then -- Change Seigan To Third Eye If Seigan Is On --
		eventArgs.cancel = true 
        send_command('/ja ThirdEye <me>')
    elseif spell.english == "Meditate" and player.tp > 2900 then -- Cancel Meditate If TP Is Above 2900 --
		eventArgs.cancel = true 
        add_to_chat(123, spell.name .. ' Canceled: ['..player.tp..' TP]')
	-- elseif (spell.english == "Stun" or spellMap == 'Drain' or spell.english == "Dread Spikes") then
		-- if buffactive.Hasso or buffactive.Seigan then -- Cancel Hasso or Seigan When You Use Stun/Drain/Dread Spikes --
			-- cast_delay(0.2)
			-- send_command('cancel Hasso,Seigan')
			-- add_to_chat(155,'Hasso/Seigan Canceled for Magic')
		-- end
	end
end

function job_precast(spell, action, spellMap, eventArgs)
	if spell.type == 'WeaponSkill' then
		if player.tp > 2750 then 
			state.WeaponskillMode:set('FullTP')
		end
	end
	state.WeaponskillMode:reset() -- Resets Custom WS mode 	
	if spell.type == 'WeaponSkill' then
		if spell.target.distance > 6 then
			eventArgs.cancel = true 
			add_to_chat(123, 'Action Cancelled: Too far from target!')
		end
	end
end

function job_post_precast(spell, action, spellMap, eventArgs)
	if spell.type == 'WeaponSkill' then
		if buffactive.ArcaneCircle then
			equip(sets.ArcaneCircle_WS)
		end
		if buffactive.Souleater then
			equip(sets.SoulEater_WS)
		end
		-- if ws_elements[spell.name] and elements[spell.name]:contains(world.day_element) then
			-- equip(sets.GavialisHelm)
		-- end
		if lugra_ws:contains(spell.english) and (world.time >= (17*60) or world.time <= (7*60)) then
			equip(sets.LugraRight)
        end
	end
end

function job_midcast(spell, action, spellMap, eventArgs)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	if spell.skill == 'Dark Magic' and buffactive.NetherVoid then
		equip(sets.NetherVoid)
	end
	if spell.skill == 'Dark Magic' and buffactive.DarkSeal then
		equip(sets.DarkSeal)
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)
	if spell.name == "Dread Spikes" then
		local hp = player.max_hp
		hpmsg = math.floor(hp*.675) 
        add_to_chat(002, 'Dread Spikes is shielding '..hpmsg..' Damage.')
	end
end

function customize_defense_set(defenseSet) 
	if ( buffactive.doom or buffactive['Doom'] ) then
        defenseSet = set_combine(defenseSet, sets.buff.Doom)
    end
    return defenseSet
end

function customize_melee_set(meleeSet)
	-- CP rule
	if state.CP.current == 'on' then
        meleeSet = set_combine(meleeSet, sets.CP)
    end
	-- Doom state Handling
	if ( buffactive.doom or buffactive['Doom'] ) then
        meleeSet = set_combine(meleeSet, sets.buff.Doom)
    end
	return meleeSet
end

function customize_idle_set(idleSet)
	-- CP rule
    if state.CP.current == 'on' then
	    idleSet = set_combine(idleSet, sets.CP)
    end
	--Doom State Detection
	if ( buffactive.doom or buffactive['Doom'] ) then
        idleSet = set_combine(idleSet, sets.buff.Doom)
    end
    return idleSet
end

function job_buff_change(buff,gain)
	if ( buffactive.doom or buffactive['Doom'] ) then
		handle_equipping_gear(player.status) -- Forces gear change at state change.
		add_to_chat(122, '~~~~You are Doomed~~~~') 
	end
	if buffactive.AM3 then
		classes.CustomMeleeGroups:append('AM3')
	end
	if buffactive.AM2 then
		classes.CustomMeleeGroups:append('AM2')
	end
	if buffactive.AM1 then
		classes.CustomMeleeGroups:append('AM1')
	end
	if buffactive.AM then
		classes.CustomMeleeGroups:append('AM')
	end
	if player.status ~= 'Idle' then
		if not midaction() then
            handle_equipping_gear(player.status)
		end
    end
end


function job_state_change(descrip, newVal, oldVal)
	if state.WeaponLock.value == true then
        disable('main','sub','range')
	else
		enable('main','sub','range')
	end
end


