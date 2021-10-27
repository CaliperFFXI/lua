-- Important DNC stuff for lua:

-- JA list: Provoke, No Foot Rise, Trance,  Waltz, Samba, JIg, Steps, Flourish 1,2,3 all JA's within those flourishes 
-- Flourish 1: Animated Flourish, Violent Flourish,Desperate Flourish.
-- Flourish 2: Reverse Flourish,  Building FLourish, Wild Flourish
-- Flourish 3: Striking Flourish, Climactic Flourish, Ternary Flourish

-- the normal stuff when it comes to WS's tho i will need a function that includes a Climactic Flourish because it functions like snk atk or trick atk but i dont have to be in a certain position 

-- WS's Exenterator - Pyrrhic Kleos - Evisceration - Rudra's Storm - Aeolian Edge

-- Will need a precast Skillchain 

-- standard fast cast stuff

-- Standard engaged low mid high Acc 

-- a dual wield engaged which will be majority of the time different Haste values depending on Magic haste and Haste Samba so will need a include for gear info unless you know a work around

-- Hybrid sets

-- Sets.buffs for Saber Dance, Fan Dance, Climactic Flourish, Closed Position, 

-- Auto use of JA Presto in conjunction with All Steps so whenever i use a step is uses Presto right before using step

-------------------------------------------------------------------------------------------------------------------
--  Custom Commands (preface with /console to use these in macros)
-------------------------------------------------------------------------------------------------------------------

--  gs c step                       Uses the currently configured step on the target, with either <t> or
--                                  <stnpc> depending on setting.
--  gs c step t                     Uses the currently configured step on the target, but forces use of <t>.
--
--  gs c cycle mainstep             Cycles through the available steps to use as the primary step when using
--                                  one of the above commands.
--  gs c cycle altstep              Cycles through the available steps to use for alternating with the
--                                  configured main step.
--  gs c toggle usealtstep          Toggles whether or not to use an alternate step.
--  gs c toggle selectsteptarget    Toggles whether or not to use <stnpc> (as opposed to <t>) when using a step.

function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

function job_setup()

    state.Buff['Climactic Flourish'] = buffactive.ClimacticFlourish or false
	state.Buff['Fan Dance'] = buffactive.FanDance or false

	send_command('bind !s gs c cycle MainStep')

    state.MainStep = M{['description']='Main Step', 'Box Step', 'Quickstep', 'Feather Step', 'Stutter Step'}
    state.AltStep = M{['description']='Alt Step', 'Quickstep', 'Feather Step', 'Stutter Step', 'Box Step'}
    state.UseAltStep = M(false, 'Use Alt Step')
    state.SelectStepTarget = M(false, 'Select Step Target')
    state.IgnoreTargetting = M(true, 'Ignore Targetting')
    state.ClosedPosition = M(false, 'Closed Position')

    state.CurrentStep = M{['description']='Current Step', 'Main', 'Alt'}
--  state.SkillchainPending = M(false, 'Skillchain Pending')

    state.CP = M(false, 'Capacity Points Mode')

	-- order of weapons is determined as they appear in this table
	state.WeaponSet = M{['description']='Weapon Set','Twashtar','TpBonus'}
	elemental_ws = S{'Aeolian Edge'}
	
	state.TreasureMode:set('Tag')

end

function user_setup()
    state.OffenseMode:options('Normal', 'Acc')
    state.HybridMode:options('Normal', 'DT')
    state.WeaponskillMode:options('Normal', 'Acc','FullTP')
    state.IdleMode:options('Normal','Regen')

    state.Auto_Kite = M(false, 'Auto_Kite')
	options.ninja_tool_warning_limit = 10
	
	update_combat_form()
	update_combat_weapon()
	
    -- Haste = 0 -- Requires: Gearinfo.lua
    -- DW_needed = 0 -- Requires: Gearinfo.lua
    -- DW = false -- Requires: Gearinfo.lua
    -- moving = false -- Requires: Gearinfo.lua
    -- update_combat_form() 
    -- determine_haste_group()-- Requires: Gearinfo.lua
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
	-- FullTP tag for weaponskill sets.
	if spell.type == 'WeaponSkill' then
		if player.tp > 2750 then 
			state.WeaponskillMode:set('FullTP')
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

function job_handle_equipping_gear(playerStatus, eventArgs)
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
		defenseSet = set_combine(defenseSet, sets.buff['Fan Dance'])
	end
    return defenseSet
end

function customize_melee_set(meleeSet)
    --if state.Buff['Climactic Flourish'] then
    --    meleeSet = set_combine(meleeSet, sets.buff['Climactic Flourish'])
    --end
	if buffactive.FanDance then
		meleeSet = set_combine(meleeSet, sets.buff['Fan Dance'])
	end
    if state.ClosedPosition.value == true then
        meleeSet = set_combine(meleeSet, sets.buff['Closed Position'])
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
    if buff == 'Saber Dance' or buff == 'Climactic Flourish' or buff == 'Fan Dance' then
        handle_equipping_gear(player.status)
    end
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

-- Handle auto-targetting based on local setup.
function job_auto_change_target(spell, action, spellMap, eventArgs)
    if spell.type == 'Step' then
        if state.IgnoreTargetting.value == true then
            state.IgnoreTargetting:reset()
            eventArgs.handled = true
        end

        eventArgs.SelectNPCTargets = state.SelectStepTarget.value
    end
end

function job_self_command(cmdParams, eventArgs)
    if cmdParams[1] == 'step' then
        if cmdParams[2] == 't' then
            state.IgnoreTargetting:set()
        end

        local doStep = ''
        if state.UseAltStep.value == true then
            doStep = state[state.CurrentStep.current..'Step'].current
            state.CurrentStep:cycle()
        else
            doStep = state.MainStep.current
        end

        send_command('@input /ja "'..doStep..'" <t>')
    end
end
