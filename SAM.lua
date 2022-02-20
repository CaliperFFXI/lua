-- Original: Motenten / Arislan Modified: Caliper -of- Asura 
-- File Version 1.0 rev 0

function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

function job_setup()
	
	state.Buff['Blade Bash'] = buffactive.BladeBash or false
	state.Buff['Hagakure'] = buffactive.Hagakure or false
	state.Buff['Hamanoha'] = buffactive.Hamanoha or false
	state.Buff['Hasso'] = buffactive.Hasso or false
	state.Buff['Konzen-Ittai'] = buffactive.Konzenittai or false
	state.Buff['Meditate'] = buffactive.Meditate or false
	state.Buff['Seigan'] = buffactive.Seigan or false
	state.Buff['Sekkanoki'] = buffactive.Sekkanoki or false
	state.Buff['Sengikori'] = buffactive.Sengikori or false
	state.Buff['Third Eye'] = buffactive.ThirdEye or false
	state.Buff['Warding Circle'] = buffactive.WardingCircle or false
	state.Buff['Yaegasumi'] = buffactive.Yaegasumi or false

	-- Aftermath
	state.Buff['Aftermath'] = buffactive.AM or false
	state.Buff["Aftermath: Lv.1"] = buffactive.AM1 or false
	state.Buff["Aftermath: Lv.2"] = buffactive.AM2 or false
	state.Buff["Aftermath: Lv.3"] = buffactive.AM3 or false
		
	-- order of weapons is determined as they appear in this table
	state.WeaponSet = M{['description']='Weapon Set',
		'GreatKatana',
		'Polearm'
	}
	elemental_ws = S{''}
	
	--place weaponskills in this table to be used with lugra swaps 
    lugra_ws = S{'Tachi: Kasha','Tachi: Shoha','Tachi: Fudo','Impulse Drive'}

end

function user_setup()
    state.OffenseMode:options('Normal','Acc','HighAcc')
    state.CastingMode:options('Normal','Acc','HighAcc')
    state.HybridMode:options('Normal','DT')
    state.RangedMode:options('Normal','Acc')
    state.WeaponskillMode:options('Normal','Acc','HighAcc','FullTP')
    state.IdleMode:options('Normal')
	
	options.ninja_tool_warning_limit = 10
	
end

function job_pretarget(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		eventArgs.cancel = true 
        send_command('@input /item "Echo Drops" <me>')
    elseif spell.english == "Meditate" and player.tp > 2900 then -- Cancel Meditate If TP Is Above 2900 --
		eventArgs.cancel = true 
        add_to_chat(123, spell.name .. ' Canceled: ['..player.tp..' TP]')
	elseif spell.action_type == 'WeaponSkill' or spell.action_type == 'JobAbility' then 
		if state.Buff['Hasso'] == false then
		eventArgs.cancel = true 
        send_command('@input /ja "Hasso" <me>')
		end
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
		if lugra_ws:contains(spell.english) and (world.time >= (17*60) or world.time <= (7*60)) then
			equip(sets.LugraLeft)
        end
	end
end

function job_midcast(spell, action, spellMap, eventArgs)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
end

function job_aftercast(spell, action, spellMap, eventArgs)
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
    if (buffactive['Aftermath: Lv.3'] or
		buffactive['Aftermath: Lv.2'] or		
		buffactive['Aftermath: Lv.1'])
		and player.equipment.main == "" then
        meleeSet = set_combine(meleeSet, sets.engaged.Aftermath)
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
