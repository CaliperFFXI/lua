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
	
	include('organizer-lib')
    include('Mote-TreasureHunter')
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
	-- Shdow Check (requires cancel.lua)
    if spellMap == 'Utsusemi' then
        if buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
            cancel_spell()
            add_to_chat(123, '**!! '..spell.english..' Canceled: [3+ IMAGES] !!**')
            eventArgs.handled = true
            return
        elseif buffactive['Copy Image'] or buffactive['Copy Image (2)'] then
            send_command('cancel 66; cancel 444; cancel Copy Image; cancel Copy Image (2)')
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
	-- Obi Check for Weaponskills
	if spell.type == 'WeaponSkill' then
		if elemental_ws:contains(spell.english) then
			if spell.element == world.weather_element and (get_weather_intensity() == 2 and spell.element ~= elements.weak_to[world.day_element]) then
				equip(sets.Obi)
			-- Matching day and weather.
			elseif spell.element == world.day_element and spell.element == world.weather_element then
				equip(sets.Obi)
			-- Match day or weather.
			elseif spell.element == world.day_element or spell.element == world.weather_element then
				equip(sets.Obi)			
			end
		end
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)
	state.WeaponskillMode:reset() -- Resets Custom WS mode for next round	
end

function job_handle_equipping_gear(playerStatus, eventArgs)
    -- check_gear()
    -- determine_haste_group()
    -- check_moving()
end

function job_update(cmdParams, eventArgs)
	update_combat_weapon()
	update_combat_form()
    handle_equipping_gear(player.status)
end

function update_combat_form()
    -- if DW == true then
        -- state.CombatForm:set('DW')
    -- elseif DW == false then
        -- state.CombatForm:reset()
    -- end
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

function update_combat_weapon()
	state.CombatWeapon:set(state.WeaponSet.current)
	equip(sets[state.WeaponSet.current])
end

function do_ninja_tool_checks(spell, spellMap, eventArgs)
    local ninja_tool_name
    local ninja_tool_min_count = 1

    -- Checks: sneak/invis and shadows.
    if spell.skill == "Ninjutsu" then
        if spellMap == 'Utsusemi' then
            ninja_tool_name = "Shihei"
        elseif spellMap == 'Monomi' then
            ninja_tool_name = "Sanjaku-Tenugui"
        elseif spellMap == 'Tonko' then
            ninja_tool_name = "Shinobi-Tabi"
        else
            return
        end
    end

    local available_ninja_tools = player.inventory[ninja_tool_name]

    -- If no tools are available, end.
    if not available_ninja_tools then
        if spell.skill == "Ninjutsu" then
            return
        end
    end

    -- Low ninja tools warning.
    if spell.skill == "Ninjutsu" and state.warned.value == false
        and available_ninja_tools.count > 1 and available_ninja_tools.count <= options.ninja_tool_warning_limit then
        local msg = '*****  LOW TOOLS WARNING: '..ninja_tool_name..' *****'
        --local border = string.repeat("*", #msg)
        local border = ""
        for i = 1, #msg do
            border = border .. "*"
        end

        add_to_chat(104, border)
        add_to_chat(104, msg)
        add_to_chat(104, border)

        state.warned:set()
    elseif available_ninja_tools.count > options.ninja_tool_warning_limit and state.warned then
        state.warned:reset()
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

    -- gearinfo(cmdParams, eventArgs)
end


-- Requires: Gearinfo.lua
-- function determine_haste_group()
    -- classes.CustomMeleeGroups:clear()
    -- if DW == true then
        -- if DW_needed <= 1 then
            -- classes.CustomMeleeGroups:append('MaxHaste')
        -- elseif DW_needed > 1 and DW_needed <= 9 then
            -- classes.CustomMeleeGroups:append('HighHaste')
        -- elseif DW_needed > 9 and DW_needed <= 21 then
            -- classes.CustomMeleeGroups:append('MidHaste')
        -- elseif DW_needed > 21 and DW_needed <= 39 then
            -- classes.CustomMeleeGroups:append('LowHaste')
        -- elseif DW_needed > 39 then
            -- classes.CustomMeleeGroups:append('')
        -- end
    -- end
-- end
-- Requires: Gearinfo.lua
-- function gearinfo(cmdParams, eventArgs)
    -- if cmdParams[1] == 'gearinfo' then
        -- if type(tonumber(cmdParams[2])) == 'number' then
            -- if tonumber(cmdParams[2]) ~= DW_needed then
            -- DW_needed = tonumber(cmdParams[2])
            -- DW = true
            -- end
        -- elseif type(cmdParams[2]) == 'string' then
            -- if cmdParams[2] == 'false' then
                -- DW_needed = 0
                -- DW = false
            -- end
        -- end
        -- if type(tonumber(cmdParams[3])) == 'number' then
            -- if tonumber(cmdParams[3]) ~= Haste then
                -- Haste = tonumber(cmdParams[3])
            -- end
        -- end
        -- if type(cmdParams[4]) == 'string' then
            -- if cmdParams[4] == 'true' then
                -- moving = true
            -- elseif cmdParams[4] == 'false' then
                -- moving = false
            -- end
        -- end
        -- if not midaction() then
            -- job_update()
        -- end
    -- end
-- end
-- Requires: Gearinfo.lua
-- function check_moving()
    -- if state.DefenseMode.value == 'None'  and state.Kiting.value == false then
        -- if state.Auto_Kite.value == false and moving then
            -- state.Auto_Kite:set(true)
        -- elseif state.Auto_Kite.value == true and moving == false then
            -- state.Auto_Kite:set(false)
        -- end
    -- end
-- end


