function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

function job_setup()

	state.Buff['Agressor'] = buffactive.Agressor or false
	state.Buff['Berserk'] = buffactive.Berserk or false
	state.Buff['Blood Rage'] = buffactive.BloodRage or false
	state.Buff['Brazen Rush'] = buffactive.BrazenRush or false
	state.Buff['Defender'] = buffactive.Defender or false
	state.Buff['Mighty Strikes'] = buffactive.MightyStrikes or false
	state.Buff['Restraint'] = buffactive.Restraint or false
	state.Buff['Retaliation'] = buffactive.Retaliation or false
	state.Buff['Warcry'] = buffactive.Warcry or false
	state.Buff["Warrior's Charge"] = buffactive.WarriorsCharge or false
	
	-- /SAM
	state.Buff['Hasso'] = buffactive.Hasso or false
	state.Buff['Seigan'] = buffactive.Seigan or false
		
	-- order of weapons is determined as they appear in this table
	state.WeaponSet = M{['description']='Weapon Set'}
	
	--place weaponskills in this table to be used with lugra swaps 
    lugra_ws = S{''}

end

function user_setup()
    state.OffenseMode:options('Normal','Acc','HighAcc')
    state.CastingMode:options('Normal','Acc','HighAcc')
    state.HybridMode:options('Normal','DT')
    state.RangedMode:options('Normal','Acc')
    state.WeaponskillMode:options('Normal','Acc','HighAcc','LowTP','FullTP')
    state.IdleMode:options('Normal','Refresh','Weak')
	
	options.ninja_tool_warning_limit = 10
	
end

function job_pretarget(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		eventArgs.cancel = true 
        send_command('input /item "Echo Drops" <me>')
    elseif spell.english == "Meditate" and player.tp > 2900 then -- Cancel Meditate If TP Is Above 2900 --
		eventArgs.cancel = true 
        add_to_chat(123, spell.name .. ' Canceled: ['..player.tp..' TP]')
	end
end

function job_precast(spell, action, spellMap, eventArgs)
	-- Compensate for TP bonuses during weaponskills.
	if spell.type == 'WeaponSkill' then
		if spell.name == "King's Justice" or spell.name == "Upheaval" then
			if player.tp < 2000 then
				state.WeaponskillMode:set('LowTP')
			end	
		elseif state.CombatWeapon.current == 'Chango' then  -- Change To whatever weapon you like
			if player.tp >= 2500 then -- 500 tp bonus from Chango.
				state.WeaponskillMode:set('FullTP')
			end
		elseif player.tp >= 2750 then -- 250 Moonshade Bonus
				state.WeaponskillMode:set('FullTP')
		end
	end
	if spell.type == 'WeaponSkill' then
		if spell.target.distance > 6 then
			eventArgs.cancel = true 
			add_to_chat(123, 'Action Cancelled: Too far from target!')
		end
	end
end

function job_post_precast(spell, action, spellMap, eventArgs)
	if spell.type == 'WeaponSkill' then
		if lugra_ws:contains(spell.english) and (world.time >= (17*60) or world.time <= (7*60)) then
			equip(sets.Lugra)
        end
	end
end

function job_midcast(spell, action, spellMap, eventArgs)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
end

function job_aftercast(spell, action, spellMap, eventArgs)
	state.WeaponskillMode:reset() -- Resets Custom WS mode 
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
	
	if ( buffactive.Restraint or buffactive['Restraint'] ) then
        meleeSet = set_combine(meleeSet, sets.engaged.Restraint)
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
	
	local force_equip = nil  
	
	if ( force_equip == true and player.status ~= 'idle' ) then
		handle_equipping_gear(player.status)
	end


	
	if player.status ~= 'Idle' then
		if not midaction() then
            handle_equipping_gear(player.status)
		end
    end
	
end

function job_status_change(newStatus, oldStatus)
end

function job_state_change(descrip, newVal, oldVal)
	if state.WeaponLock.value == true then
        disable('main','sub','range')
	else
		enable('main','sub','range')
	end
end

function job_update(cmdParams, eventArgs)
end

function get_custom_wsmode(spell, spellMap, ws_mode)
end

