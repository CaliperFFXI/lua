-- Original: Motenten / Arislan Modified: Caliper -of- Asura 
function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()

    state.Buff.Barrage = buffactive.Barrage or false
    state.Buff.Camouflage = buffactive.Camouflage or false
    state.Buff['Unlimited Shot'] = buffactive['Unlimited Shot'] or false
    state.Buff['Velocity Shot'] = buffactive['Velocity Shot'] or false
    state.Buff['Double Shot'] = buffactive['Double Shot'] or false

	state.DualWield = M(false, 'Dual Wield Mode')
	state.WeaponLock = M(false, 'Weapon Lock')	
	state.CP = M(false, 'Capacity Points Mode')
    state.warned = M(false)
	
	state.WeaponSet = M{['description']='Weapon Set',
		'Gastraphetes',
		'Gandiva',
		'Annihilator',
		'Fomalhaut',
		'FailNot',
		'SavageBlade',
		'Decimation',
		'Evisceration'
	}
	classes.rangedSkill = ranged_weapons
	
	-- Variable for tracking trueshot distance (requires distanceplus addon)
	dpsetting = nil
	-- Variable for tracking flurry buff
	flurry = nil

    include('Mote-TreasureHunter')

end

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('Normal', 'Acc')
    state.HybridMode:options('Normal', 'DT')
    state.RangedMode:options('Normal', 'Acc')
    state.WeaponskillMode:options('Normal', 'Acc', 'FullTP')
    state.IdleMode:options('Normal','Regen')
	
    options.ammo_warning_limit = 10
	options.ninja_tool_warning_limit = 10
	
	job_update()
	
end

function job_pretarget(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		eventArgs.cancel = true 
        send_command('input /item "Echo Drops" <me>')
	end
end

function job_precast(spell, action, spellMap, eventArgs)
	if spell.skill == "Ninjutsu" then
		do_ninja_tool_checks(spell, spellMap, eventArgs)
		if spellMap == 'Utsusemi' then
			if buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
				eventArgs.cancel = true 
				add_to_chat(123, '**!! '..spell.english..' Canceled: [3+ IMAGES] !!**')
				eventArgs.handled = true
				return
			elseif buffactive['Copy Image'] or buffactive['Copy Image (2)'] then
				send_command('cancel 66; cancel 444; cancel Copy Image; cancel Copy Image (2)')
			end
		end
	end
	state.WeaponskillMode:reset() -- Resets Custom WS mode 	
	-- Compensate for TP bonuses during weaponskills.
	if spell.type == 'WeaponSkill' then
		if state.CombatWeapon.current == 'TpBonus' then
			if player.tp >= 2000 then --1000 TP Bonus from Sparrowhawk
				state.WeaponskillMode:set('FullTP')
			end
		elseif state.CombatWeapon.current == 'Fomalhaut' then
			if player.tp >= 2500 then -- 500 TP Bonus from Aeonic Weapons
				state.WeaponskillMode:set('FullTP')
			end
		elseif player.tp == 3000 then 
			state.WeaponskillMode:set('FullTP')
		end
	end
	if spell.type == 'WeaponSkill' or spell.action_type == 'Ranged Attack' then
			handle_ammo(spell, action, spellMap, eventArgs)	
			set_trueShot_range()
		if spell.name ~= "Savage Blade"  or spell.name~= "Decimation" then
			if player.equipment.ammo == "Hauksbok Arrow" then
				add_to_chat(123, 'Cancelled action: "'..player.equipment.ammo..'" was equipped!')
				eventArgs.cancel = true 
			end
		end
	end
	if spell.type == 'WeaponSkill' then
		if spell.skill == 'Marksmanship' or spell.skill == 'Archery' then
			if spell.target.distance > 22 then
				eventArgs.cancel = true 
				add_to_chat(123, 'Action Cancelled: Too far from target!')
			end
		elseif spell.target.distance > 6 then
				eventArgs.cancel = true 
				add_to_chat(123, 'Action Cancelled: Too far from target!')
		end
	end
end

function job_post_precast(spell, action, spellMap, eventArgs)
    if (spell.action_type == 'Ranged Attack' or spell.type == 'WeaponSkill') then
		if state.WeaponSet.current ~= 'TpBonus' then
			check_ammo_stock(spell, spellMap, eventArgs) -- Check ammo stock
		end
    end
	classes.CustomRangedGroups:clear()
    if spell.action_type == 'Ranged Attack' then
		if flurry == 2 then
			classes.CustomRangedGroups:append('Flurry2')
		elseif flurry == 1 then
			classes.CustomRangedGroups:append('Flurry1')
		end
    -- Equip obi if weather/day matches for WS.
	elseif spell.type == 'WeaponSkill' then
     if elemental_ws:contains(spell.name) then
			-- Unlimited shot bullet.
            -- Matching double weather (w/o day conflict).
            if spell.element == world.weather_element and (get_weather_intensity() == 2 and spell.element ~= elements.weak_to[world.day_element]) then
                equip(sets.Obi)
            -- Target distance under 1.7 yalms.
            --elseif spell.target.distance < (1.7 + spell.target.model_size) then
            --    equip({waist="Orpheus's Sash"})
            -- Matching day and weather.
            elseif spell.element == world.day_element and spell.element == world.weather_element then
                equip(sets.Obi)
            -- Target distance under 8 yalms.
            --elseif spell.target.distance < (8 + spell.target.model_size) then
                --equip({waist="Orpheus's Sash"})
            -- Match day or weather.
            elseif spell.element == world.day_element or spell.element == world.weather_element then
                equip(sets.Obi)			
            end
        end
    end
end

function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Ranged Attack' then
        if buffactive['Double Shot'] then
            equip(sets.DoubleShot)
        end
        if state.Buff.Barrage then
            equip(sets.buff.Barrage)
        end		
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)
    if spell.english == "Shadowbind" then
        send_command('@timers c "Shadowbind ['..spell.target.name..']" 42 down abilities/00122.png')
    end
	--Remove Hauksbok Arrow after WS 
	if player.equipment.ammo == "Hauksbok Arrow" then
		equip({ammo=empty})
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
	if S{'flurry'}:contains(buff:lower()) then
        if not gain then
            flurry = nil
            add_to_chat(122, "Flurry status cleared.")
        end
        if not midaction() then
            handle_equipping_gear(player.status)
        end
    end

	if ( buffactive.doom or buffactive['Doom'] ) then
		handle_equipping_gear(player.status) -- Forces gear change at state change.
		add_to_chat(122, '~~~~You are Doomed~~~~') 
	end
end

function job_state_change(descrip, newVal, oldVal)
	if state.WeaponLock.value == true then
        disable('main','sub','range')
	else
		enable('main','sub','range')
	end	
end

function job_update(cmdParams, eventArgs)
	update_combat_weapon()
	update_combat_form()
end

function update_combat_form()
	if player.sub_job_id == 13 or player.sub_job_id == 19 then 	-- Subjob DNC or NIN 
		state.DualWield:set(true)
		state.CombatForm:set('DualWield')
	else
		state.DualWield:set(false)
		state.CombatForm:reset()
	end
end

function update_combat_weapon()
	state.CombatWeapon:set(state.WeaponSet.current)
	equip(sets[state.WeaponSet.current])
	dpsetting = nil -- reset distanceplus for new weapon
end

--Read incoming packet to differentiate between Haste/Flurry I and II
windower.register_event('action',
    function(act)
        --check if you are a target of spell
        local actionTargets = act.targets
        playerId = windower.ffxi.get_player().id
        isTarget = false
        for _, target in ipairs(actionTargets) do
            if playerId == target.id then
                isTarget = true
            end
        end
        if isTarget == true then
            if act.category == 4 then
                local param = act.param
                if param == 845 and flurry ~= 2 then
                    add_to_chat(122, 'Flurry Status: Flurry I')
                    flurry = 1
                elseif param == 846 then
                    add_to_chat(122, 'Flurry Status: Flurry II')
                    flurry = 2
              end
            end
        end
    end)

-- checks ammunition stock
function check_ammo_stock(spell, spellMap, eventArgs)
	local stock
	local stock_min_count = 1
	
	local stock = 	player.inventory[player.equipment.ammo] or 
					player.wardrobe2[player.equipment.ammo] or
					player.wardrobe3[player.equipment.ammo] or
					player.wardrobe4[player.equipment.ammo] 

	if stock == nil then 
	return
	end
					
    if state.warned.value == false 
        and stock.count > 1 and stock.count <= options.ammo_warning_limit then
        local msg = '*****  LOW AMMO WARNING: '..player.equipment.ammo..' *****'
        --local border = string.repeat("*", #msg)
        local border = ""
        for i = 1, #msg do
            border = border .. "*"
        end

        add_to_chat(104, border)
        add_to_chat(104, msg)
        add_to_chat(104, border)

        state.warned:set()
    elseif stock.count > options.ammo_warning_limit and state.warned then
        state.warned:reset()
    end
end

function handle_ammo(spell, action, spellMap, eventArgs)
	--add_to_chat(123, 'entered function handle_ammo()') 
	skill = classes.rangedSkill[player.equipment.range]
    --add_to_chat(122, 'Skill:'..skill..'') -- troubleshooting
	if skill == nil then	--error protection and warning
		add_to_chat(123, 'Cancelled ammo selection: No ranged weapon available') 
		return
	end
	 
	if (state.CombatWeapon.current == 'Gastraphetes' or player.equipment.main == "Gastraphetes") then
		equip({ammo="Quelling Bolt"})
	elseif skill == 'Marksmanship' then
		if spell.type == 'WeaponSkill' then
			equip({ammo="Chrono Bullet"}) 
		else -- ranged attack
			equip({ammo="Eradicating Bullet"})
		end
	else 
		if spell.type == 'WeaponSkill' then
			equip({ammo="Chrono Arrow"})
		else -- ranged attack
			equip({ammo="Artemis's Arrow"})
		end
	end		
end

-- BETA
function set_trueShot_range()
	if not dpsetting then
		-- Requires distancePlus
		if skill == 'Marksmanship' and player.equipment.range == "Gastraphetes" then
			dpsetting = 'xbow'
		else
			dpsetting = 'gun'
		end
		if skill == 'Archery' then
			dpsetting = 'Bow'
		end
		
		if dpsetting then
			send_command('dp '..dpsetting..'')
		end
	end
end


