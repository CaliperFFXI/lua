-- Original: Motenten / Arislan Modified: Caliper -of- Asura 
function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
	-- Load player include file.
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()

    state.Buff['Unbridled Learning'] = buffactive['Unbridled Learning'] or false
    state.Buff['Efflux'] = buffactive['Efflux'] or false
    state.Buff['Diffusion'] = buffactive['Diffusion'] or false
    state.Buff['Burst Affinity'] = buffactive['Burst Affinity'] or false
    state.Buff['Chain Affinity'] = buffactive['Chain Affinity'] or false
    state.Buff.Convergence = buffactive.Convergence or false
    state.Buff.Diffusion = buffactive.Diffusion or false
    state.Buff.Efflux = buffactive.Efflux or false

	classes.BlueSpellMap = blue_magic_maps	
	
	-- For th_action_check():
	-- AoE MA IDs for actions that always have TH: Diaga
	info.th_ma_ids = S{33, 34}
	-- AoE WS IDs for actions that always have TH in TH mode: Cyclone, Aeolian Edge
	info.th_ws_ids = S{20, 30}
	-- JA IDs for actions that always have TH: Provoke, Animated Flourish (Should all be handled in aftercast, kept for notes: 35, 204)
	info.th_ja_ids = S{}
	-- Unblinkable JA IDs for actions that always have TH: Quick/Box/Stutter Step, Desperate/Violent Flourish (Should all be handled in aftercast, kept for notes: 201, 202, 203, 205, 207)
	info.th_u_ja_ids = S{}
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('Normal', 'Acc')
    state.HybridMode:options('Normal', 'Hybrid')
    state.RangedMode:options('Normal', 'Acc')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.CastingMode:options('Normal', 'Resistant')
    state.PhysicalDefenseMode:options('PDT', 'MDT')
    state.IdleMode:options('Normal', 'Refresh')

	state.Learning = M(false, 'Learning Mode')
	state.MagicBurst = M(false, 'Magic Burst')

	state.WeaponSet = M{['description']='Weapon Set','Magic','Melee'}

    send_command('lua l azureSets')
	send_command('bind !l gs c toggle Learning')
    
	include('Mote-TreasureHunter')
	--state.TreasureMode:set('Tag')
	
end

-- Called when this job file is unloaded (eg: job change)
function user_unload()
    send_command('lua u azureSets')
end

function job_get_spell_map(spell, default_spell_map)
    if spell.skill == 'Blue Magic' then
		local BlueMagicMap = classes.BlueSpellMap[spell.english]
		if BlueMagicMap == 'Magical' then
			--determine light or dark 
			if spell.element == 'Dark' then
				return "MagicalDark"
			elseif spell.element == 'Light' then
				return "MagicalLight"
			else
				return "Magical"
			end
		else
			return BlueMagicMap
		end
	end
end

function job_pretarget(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		eventArgs.cancel = true 
        send_command('input /item "Echo Drops" <me>')
	end
end

function job_precast(spell, action, spellMap, eventArgs)
    -- if unbridled_spells:contains(spell.english) and not state.Buff['Unbridled Learning'] then
        -- eventArgs.cancel = true
        -- windower.send_command('@input /ja "Unbridled Learning" <me>; wait 1.5; input /ma "'..spell.name..'" '..spell.target.name)
    -- end
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

-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
function job_post_midcast(spell, action, spellMap, eventArgs)
    -- Add enhancement gear for Chain Affinity, etc.
    if spell.skill == 'Blue Magic' then
        for buff,active in pairs(state.Buff) do
            if active and sets.buff[buff] then
                equip(sets.buff[buff])
            end
        end
        if spellMap == 'Healing' then
			if spell.target.type == 'SELF' then
				equip(sets.midcast['Blue Magic'].HealingSelf)
			end
        end
    end	
    if spell.skill == 'Enhancing Magic' then
		equip(sets.midcast.EnhancingDuration)
    end
	-- Matching double weather (w/o day conflict).
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

function job_aftercast(spell, action, spellMap, eventArgs)
    if not spell.interrupted then
        if spell.english == "Dream Flower" then
            send_command('@timers c "Dream Flower ['..spell.target.name..']" 90 down spells/00098.png')
        elseif spell.english == "Soporific" then
            send_command('@timers c "Sleep ['..spell.target.name..']" 90 down spells/00259.png')
        elseif spell.english == "Sheep Song" then
            send_command('@timers c "Sheep Song ['..spell.target.name..']" 60 down spells/00098.png')
        elseif spell.english == "Yawn" then
            send_command('@timers c "Yawn ['..spell.target.name..']" 60 down spells/00098.png')
        elseif spell.english == "Entomb" then
            send_command('@timers c "Entomb ['..spell.target.name..']" 60 down spells/00547.png')
        end
    end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

function job_update(cmdParams, eventArgs)
    handle_equipping_gear(player.status)
    th_update(cmdParams, eventArgs)
	update_combat_weapon()
end

function update_combat_weapon()
	if state.WeaponSet.has_value then
		equip(sets[state.WeaponSet.current])
		state.CombatWeapon:set(state.WeaponSet.current)
	end
end

-- State buff checks that will equip buff gear and mark the event as handled.
function apply_ability_bonuses(spell, action, spellMap)
    if state.Buff['Burst Affinity'] and spellMap == 'Magical' then
        if state.MagicBurst.value then
            equip(sets.magic_burst)
        end
        equip(sets.buff['Burst Affinity'])
    end
    if state.Buff.Efflux and spellMap == 'Physical' then
        equip(sets.buff['Efflux'])
    end
    if state.Buff.Diffusion and (spellMap == 'Buff' or spellMap == 'SkillBuff') then
        equip(sets.buff['Diffusion'])
    end

    if state.Buff['Burst Affinity'] then equip (sets.buff['Burst Affinity']) end
    if state.Buff['Efflux'] then equip (sets.buff['Efflux']) end
    if state.Buff['Diffusion'] then equip (sets.buff['Diffusion']) end
end
