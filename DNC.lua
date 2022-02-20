-- Original: Motenten / Arislan Modified: Caliper -of- Asura 
-- File Version 1.0 rev 0

function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

function job_setup()

    state.Buff['Climactic Flourish'] = buffactive['Climactic Flourish'] or false
    state.ClosedPosition = M(false, 'Closed Position')
    state.CP = M(false, 'Capacity Points Mode')

	-- order of weapons is determined as they appear in this table
	state.WeaponSet = M{['description']='Weapon Set','Terpsichore','Twashtar','Blurred','Karambit'}
	
			-- Aftermath
	state.Buff['Aftermath'] = buffactive.AM or false
	state.Buff["Aftermath: Lv.1"] = buffactive.AM1 or false
	state.Buff["Aftermath: Lv.2"] = buffactive.AM2 or false
	state.Buff["Aftermath: Lv.3"] = buffactive.AM3 or false

	
	include('organizer-lib')
	send_command('lua l Dnc-hud')

end

function user_setup()
    state.OffenseMode:options('Normal','Hybrid','Acc')
    state.HybridMode:options('Normal','DT')
    state.WeaponskillMode:options('Normal','Acc','FullTP','PDL','PDLTP')
    state.IdleMode:options('Normal','Regen')
	
	state.Physical_Limit = M(false, 'Weapon Lock')
	state.WeaponLock = M(false, 'Weapon Lock')
    state.Auto_Kite = M(false, 'Auto_Kite')
	options.ninja_tool_warning_limit = 10
		
end

function job_pretarget(spell, action, spellMap, eventArgs)
	-- Auto Presto
    if spell.type == 'Step' then
        local allRecasts = windower.ffxi.get_ability_recasts()
        local prestoCooldown = allRecasts[236]
        local under3FMs = not buffactive['Finishing Move 3'] and not buffactive['Finishing Move 4'] and not buffactive['Finishing Move 5']

        if player.main_job_level >= 77 and prestoCooldown < 1 and under3FMs then
            cast_delay(1.1)
            send_command('input /ja "Presto" <me>')
        end
    end	
	-- Distance Check
	if spell.type == 'WeaponSkill' then
		if spell.target.distance > 6 then
			eventArgs.cancel = true 
			add_to_chat(123, 'Action Cancelled: Too far from target!')
		end
	end
end

function job_precast(spell, action, spellMap, eventArgs)
	-- FullTP tag for weaponskill sets.
	if spell.type == 'WeaponSkill' then
		if player.tp > 2750 then 
			state.WeaponskillMode:set('FullTP')
		-- Physical_Limit toggled on
		elseif state.Physical_Limit.current == 'on' then
			state.WeaponskillMode:set('PDL')
		-- Physical_Limit toggled on and FullTP
		elseif state.Physical_Limit.current == 'on' and player.tp > 2750 then
			state.WeaponskillMode:set('PDLTP')
		end
	end
end

function job_post_precast(spell, action, spellMap, eventArgs)
    if spell.type == "WeaponSkill" then
        if state.Buff['Climactic Flourish'] then
            equip(sets.buff['Climactic Flourish'])
        end
    end
    if spell.type=='Waltz' and spell.english:startswith('Curing') and spell.target.type == 'SELF' then
        equip(sets.precast.WaltzSelf)
    end
end

function job_aftercast(spell, action, spellMap, eventArgs)
		state.WeaponskillMode:reset() -- Resets Custom WS mode for next round	
end

function job_update(cmdParams, eventArgs)
    handle_equipping_gear(player.status)
end

function get_custom_wsmode(spell, spellMap, defaut_wsmode)
end

function customize_defense_set(defenseSet) 
	if ( buffactive.doom or buffactive['Doom'] ) then
        defenseSet = set_combine(defenseSet, sets.buff.Doom)
    end
	if buffactive.FanDance then
		defenseSet = set_combine(defenseSet, sets.FanDance)
	end
    return defenseSet
end

function customize_melee_set(meleeSet)
	if buffactive['Fan Dance'] then
		meleeSet = set_combine(meleeSet, sets.FanDance)
	end
    if state.ClosedPosition.value == true then
        meleeSet = set_combine(meleeSet, sets.ClosedPosition)
    end
		--Aftermath Set Handling
	if (buffactive['Aftermath: Lv.3'])
      and player.equipment.main == "Terpsichore" then
      meleeSet = set_combine(meleeSet, sets.engaged.MythAftermath)
	end	
	if state.Buff['Climactic Flourish'] then
            meleeSet = set_combine(meleeSet, sets.buff['Climactic Flourish'])
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
    -- Correct Syntax
	if ( buffactive['Saber Dance'] or buffactive['Climactic Flourish'] or buffactive['Fan Dance'] ) then
        handle_equipping_gear(player.status)
    end
	-- Correct Syntax
    -- if buffactive['Saber Dance'] or buffactive['Climactic Flourish'] or buffactive['Fan Dance'] then
        -- handle_equipping_gear(player.status)
    -- end
	
	-- Incorrect syntax
    -- if buff == 'Saber Dance' or buff == 'Climactic Flourish' or buff == 'Fan Dance' then
        -- handle_equipping_gear(player.status)
    -- end
	
	if ( buffactive.doom or buffactive['Doom'] ) then
		handle_equipping_gear(player.status) -- Forces gear change at state change.
		add_to_chat(122, '~~~~You are Doomed~~~~') 
	end
	if player.status == 'Engaged' then	
		handle_equipping_gear(player.status)
	end
end
