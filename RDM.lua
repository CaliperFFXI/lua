-- Original: Motenten / Arislan Modified: Caliper -of- Asura 
function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

function job_setup()

	state.Buff.Enfire = buffactive['Enfire'] or false
	state.Buff.EnfireII = buffactive['Enfire II'] or false
	state.Buff.Enblizzard = buffactive['Enblizzard'] or false
	state.Buff.EnblizzardII = buffactive['Enblizzard II'] or false
	state.Buff.EnAero = buffactive['Enaero'] or false
	state.Buff.EnAeroII = buffactive['Enaero II'] or false
	state.Buff.Enstone = buffactive['Enstone'] or false
	state.Buff.EnStoneII = buffactive['Enstone II'] or false
	state.Buff.Enthunder = buffactive['Enthunder'] or false
	state.Buff.EnthunderII = buffactive['Enthunder II'] or false
	state.Buff.Enwater = buffactive['Enwater'] or false
	state.Buff.EnwaterII = buffactive['Enwater II'] or false
    state.Buff.Saboteur = buffactive.Saboteur or false
	
	
	-- --Place spells here for skill bonus
    -- Enhancing_Skill =	S{'Temper', 'Temper II', 'Enfire', 'Enfire II', 'Enblizzard', 'Enblizzard II', 
						-- 'Enaero', 'Enaero II','Enstone', 'Enstone II', 'Enthunder', 'Enthunder II',
						-- 'Enwater', 'Enwater II'}
					
	-- --Place spells here for duration bonus				
	-- Enhancing_Duration = S{'Haste','Haste II','Flurry','Flurry II','Refresh','Refresh II','Refresh III',
						-- 'Regen','Regen II','Aurorastorm','Voidstorm','Firestorm','Sandstorm','Rainstorm',
						-- 'Hailstorm','Windstorm','Thunderstorm','Phalanx','Phalanx II'}
		
	elemental_ws =	S{'Sanguine Blade','Seraph Blade','Aeolian Edge'}
	
	-- This var is used to store EnSpell Element for logic functions.
	EnSpell_Element = nil
	
	gear.FC_MACC_Cape = {name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}}

end

function user_setup()

    state.OffenseMode:options('Normal', 'Acc')
    state.HybridMode:options('Normal', 'DT')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.CastingMode:options('Normal')
    state.IdleMode:options('Normal','Refresh')
	
	state.WeaponLock = M(false, 'Weapon Lock')	
	state.WeaponSet = M{['description']='Weapon Set',}
	state.CP = M(false, 'Capacity Points Mode')

	state.DualWield = M(false, 'Dual Wield Mode')
	state.RangeLock = M(false, 'Range Lock')
    state.MagicBurst = M(false, 'Magic Burst')
	
end

function job_precast(spell, action, spellMap, eventArgs)
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
    -- Equip obi if weather/day matches for WS.
    if spell.type == 'WeaponSkill' then
        -- Replace TP-bonus gear if not needed.
        if spell.english == 'Sanguine Blade' or spell.english == 'Aeolian Edge' and player.tp > 2900 then
            equip(sets.FullTP)
        end
        if elemental_ws:contains(spell.name) then
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
	end
end

function job_midcast(spell, action, spellMap, eventArgs)


end

function job_post_midcast(spell, action, spellMap, eventArgs)

	--	Composure Buff for Party/Alliance
	if spellMap == 'Enhancing Magic' then
		if (spell.target.type == 'PLAYER' or spell.target.type == 'NPC') and buffactive.Composure then
			equip(sets.buff.ComposureOther)
		end
	end
    
	--	Cures on Self only
    if spellMap == 'Cure' and spell.target.type == 'SELF' then
        equip(sets.midcast.CureSelf)
    end
	
	--Elemental
    if spell.skill == 'Elemental Magic' then
            if spell.english == "Impact" then
                equip(sets.midcast.Impact)
            end
        if (spell.element == world.day_element or spell.element == world.weather_element) then
            equip(sets.Obi)
        end
    end
end

function job_aftercast(spell, action, spellMap, eventArgs)
    -- if not spell.interrupted then
        -- if spell.english == "Sleep II" then
            -- send_command('@timers c "Sleep II ['..spell.target.name..']" 90 down spells/00259.png')
        -- elseif spell.english == "Sleep" or spell.english == "Sleepga" then -- Sleep & Sleepga Countdown --
            -- send_command('@timers c "Sleep ['..spell.target.name..']" 60 down spells/00253.png')
        -- elseif spell.english == "Break" then
            -- send_command('@timers c "Break ['..spell.target.name..']" 30 down spells/00255.png')
        -- end
    -- end
end

function job_update(cmdParams, eventArgs)
	update_combat_weapon()
	update_combat_form()
    handle_equipping_gear(player.status)
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
	if state.WeaponSet.has_value then
		equip(sets[state.WeaponSet.current])
		state.CombatWeapon:set(state.WeaponSet.current)
	end
end

function job_buff_change(buff,gain)
		if (buffactive['Enfire'] or buffactive['Enfire II'])then		
			EnSpell_Element = "Fire"
		elseif (buffactive['Enblizzard'] or buffactive['Enblizzard II']) then 		
			EnSpell_Element = "Ice"
		elseif (buffactive['Enaero'] or buffactive['Enaero II']) then		
			EnSpell_Element = "Wind"
		elseif (buffactive['Enstone'] or buffactive['Enstone II']) then 		
			EnSpell_Element = "Earth"
		elseif (buffactive['Enthunder'] or buffactive['Enthunder II']) then 	
			EnSpell_Element = "Lightning"
		elseif (buffactive['Enwater'] or buffactive['Enwater II']) then 		
			EnSpell_Element = "Water"
		else
			EnSpell_Element = "None"
		end
--			add_to_chat(122, '[ Enspell Mode: ' .. EnSpell_Element .. ' ]') --troubleshooting line
		if player.status == 'Engaged' then	
			handle_equipping_gear(player.status)
		end
end

function customize_defense_set(defenseSet) 
	if ( buffactive.doom or buffactive['Doom'] ) then
        defenseSet = set_combine(defenseSet, sets.buff.Doom)
    end
	-- CP rule
    if state.CP.current == 'on' then
	    idleSet = set_combine(idleSet, sets.CP)
    end
	
    return defenseSet
end

function customize_melee_set(meleeSet)
	if EnSpell_Element ~= "None" or nil then
		-- Matching double weather (w/o day conflict).
		if EnSpell_Element == world.weather_element and (get_weather_intensity() == 2 and EnSpell_Element ~= elements.weak_to[world.day_element]) then
			meleeSet = set_combine(meleeSet, sets.Obi)
		-- Matching day and weather.
		elseif EnSpell_Element == world.day_element and EnSpell_Element == world.weather_element then
			meleeSet = set_combine(meleeSet, sets.Obi)
		-- Match day or weather.
		elseif EnSpell_Element == world.day_element or EnSpell_Element == world.weather_element then
			meleeSet = set_combine(meleeSet, sets.Obi)
		end		
	end
	-- CP rule
	if state.CP.current == 'on' then
        meleeSet = set_combine(meleeSet, sets.CP)
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

-- Custom spell mapping.
function job_get_spell_map(spell, default_spell_map)
    if spell.action_type == 'Magic' then
        if default_spell_map == 'Cure' or default_spell_map == 'Curaga' then
            if (world.weather_element == 'Light' or world.day_element == 'Light') then
                return "CureWeather"
            end
		end		
    end
end

-- Note: may need revision for melee stuffs
--Weapon Lock function.
function job_state_change(stateField, newValue, oldValue)
	if state.WeaponLock.value == true then
        disable('main','sub','range','ammo')
	else
		enable('main','sub','range','ammo')
	end
end

