-- Original: Motenten / Arislan Modified: Caliper -of- Asura 
-- File Version 1.0 rev 0

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
    state.Buff['Velocity Shot'] = buffactive.velocityshot or false
    state.Buff['Double Shot'] = buffactive['Double Shot'] or false
	
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
	
	-- Variables for tracking trueshot distance (requires distanceplus addon)
	dpsetting = nil
	-- Variable for tracking flurry buff
	flurry = nil

end

function user_setup()
    state.OffenseMode:options('Normal', 'Acc')
    state.HybridMode:options('Normal', 'DT')
    state.RangedMode:options('Normal', 'Acc')
    state.WeaponskillMode:options('Normal', 'Acc', 'FullTP')
    state.IdleMode:options('Normal','Regen')
		
	-- Threshold by which to warn player for low ammunition or nin tools.	
    options.ammo_warning_limit = 10
	options.ninja_tool_warning_limit = 10
	
end

function job_pretarget(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced
		eventArgs.cancel = true 
        send_command('input /item "Echo Drops" <me>')
	end
end

function job_precast(spell, action, spellMap, eventArgs)
	state.WeaponskillMode:reset() -- Resets Custom WS mode 	
	-- Compensate for TP bonuses during weaponskills.
	if spell.type == 'WeaponSkill' then
		if state.CombatWeapon.current == 'TpBonus' then
			if player.tp >= 2000 then 
				state.WeaponskillMode:set('FullTP')
			end
		elseif aeonic_weapons:contains(player.equipment.range) then
			if player.tp >= 2500 then 
				state.WeaponskillMode:set('FullTP')
			end
		elseif player.tp == 3000 then 
			state.WeaponskillMode:set('FullTP')
		end
	end
	if spell.type == 'WeaponSkill' or spell.action_type == 'Ranged Attack' then
			handle_ammo(spell, action, spellMap, eventArgs)	
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

function job_status_change(newStatus, oldStatus, eventArgs)
	if newStatus == 'Engaged' then
            --add_to_chat(123, 'detected engaged')
		if state.Buff['Velocity Shot'] then
			send_command('cancel Velocity Shot')
            add_to_chat(123, 'Velocity Shot cancelled due to status (Engaged)')
		end
	end
end

function job_state_change(descrip, newVal, oldVal)
	dpsetting = nil
	if state.WeaponLock.value == true then
        disable('main','sub','range')
	else
		enable('main','sub','range')
	end	
end

function job_update(cmdParams, eventArgs)
    handle_equipping_gear(player.status)
end

-- function job_get_weapon_set(weaponSet)
	-- return weaponSet
-- end

-- Read incoming packet to differentiate between Haste/Flurry I and II
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

-- checks ammunition stock and warns if low.
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

-- equips the correct ammo for a given ranged action.
-- Assigns distancePlus trueshot range

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
	
	-- dpsetting must be reset by job_state_change()
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



