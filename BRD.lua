-- Original: Motenten / Arislan Modified: Caliper -of- Asura 
function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
	-- Load player include file.
end  

function job_setup()	
	state.Buff['Nightingale'] = buffactive.nightingale or false
	state.Buff['Troubadour'] = buffactive.troubadour or false
    state.Buff['Pianissimo'] = buffactive.pianissimo or false
    state.Buff['Pianissimo'] = buffactive.pianissimo or false
end

function user_setup()
    state.OffenseMode:options('Normal', 'Acc')
    state.HybridMode:options('Normal', 'DT')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.CastingMode:options('Normal','Acc')
    state.IdleMode:options('Normal','Fish')
		
	--SpellMap Tables
	Placeholders = M{['description']='Dummy Song','Warding Round','Fowl Aubade','Herb Pastoral','Shining Fantasia','Scop\'s Operetta','Puppet\'s Operetta'}
	Enfeeble_Song = M{['description']='Threnody','Finale','Elegy','Nocturne','Requiem','Lullaby'}

	state.WeaponSet = M{['description']='Weapon Set','Idle','Rudras','Evisceration','SavageBlade','Fish'}
	
	-- Instrument variables --
	-- These placeholders can be modified with the name of the instrument to support RMEA options and otherwise.
    -- Define name of additional song harp
    info.ExtraSongInstrument = 'Daurdabla' 
	
	-- Define name of + Songs instrument
	info.SongBonusInstrument = 'Gjallarhorn'
	
	-- For non-Aeonic Horn users, the AeonicHorn field should be set equal to nil as follows.
	-- info.AeonicHorn = nil 
	-- Define name of Aeonic Horn
	info.AeonicHorn = 'Marsyas'
	
end

function job_precast(spell, action, spellMap, eventArgs)	
	-- Auto Use Echo Drops If You Are Silenced 
    if spell.action_type == 'Magic' and buffactive.Silence then 
		eventArgs.cancel = true 
        send_command('@input /item "Echo Drops" <me>')
	end
	if spell.type == 'BardSong' then
	-- Auto-Pianissimo
        if ((spell.target.type == 'PLAYER' and not spell.target.charmed) or (spell.target.type == 'NPC' and spell.target.in_party)) and
            not state.Buff['Pianissimo'] then
            
            local spell_recasts = windower.ffxi.get_spell_recasts()
            if spell_recasts[spell.recast_id] < 2 then
                send_command('@input /ja "Pianissimo" <me>; wait 1.5; input /ma "'..spell.name..'" '..spell.target.name)
                eventArgs.cancel = true
                return
            end
        end
        if spell.name == 'Honor March' then 	
			-- Aeonic for honor march if applicable
            equip({range=info.AeonicHorn})
        elseif spell.name:contains("Foe Lullaby") then
			-- Single target sleep (Max duration)
			if (state.Buff['Troubadour'] and state.Buff['Nightingale'])and info.AeonicHorn ~= nil then
				equip({range=info.AeonicHorn})
			else
				equip({range=info.SongBonusInstrument})
			end
        elseif spell.name:contains("Horde Lullaby") then 	
			-- AoE Sleep ( range and duration ) Harp's
			equip({range=info.ExtraSongInstrument})
		else
			equip({range=info.SongBonusInstrument})
		end
		
    end
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

function job_midcast(spell, action, spellMap, eventArgs)
	--add_to_chat(122, spellMap)
	if spellMap == ('SongPlaceholder' or 'SongEnfeeble') then
		if state.CombatForm.current == 'DualWield' then
			equip(sets.SongDualWieldDuration)
		end
	end
end

function job_post_midcast(spell, action, spellMap, eventArgs)
end

function job_aftercast(spell, action, spellMap, eventArgs)
    if spell.english:contains('Lullaby') and not spell.interrupted then
        get_lullaby_duration(spell)
    end	
end

function job_handle_equipping_gear(playerStatus, eventArgs)
end

function job_update(cmdParams, eventArgs)
end

function customize_melee_set(meleeSet)
    if buffactive['Aftermath: Lv.3'] and player.equipment.main == "Carnwenhan" then
        meleeSet = set_combine(meleeSet, sets.engaged.Aftermath)
    end
	-- if player.status == 'Engaged' then
		-- meleeSet = set_combine(meleeSet, sets[state.WeaponSet.current])
	-- end
	if (buffactive.doom or buffactive['Doom']) then
        meleeSet = set_combine(meleeSet, sets.buff.Doom)
    end
    return meleeSet -- !! line must remain for melee set to equip properly.
end

function customize_idle_set(idleSet)
	if (buffactive.doom or buffactive['Doom']) then
        idleSet = set_combine(idleSet, sets.buff.Doom)
    end
	-- if player.status == 'Idle' then
		-- idleSet = set_combine(idleSet, sets[state.WeaponSet.current])
	-- end			
	return idleSet -- !! line must remain for idle set to equip properly.
end

function job_get_spell_map(spell, default_spell_map)
	-- return "newspellMap" 
    if spell.type == 'BardSong' then
		if Placeholders:contains(spell.english) then
			return "SongPlaceholder"
		elseif spell.target.type == 'MONSTER' then
			return "SongEnfeeble"
		end
    end
	-- Weather spellMap for 'Cure'
	if spell.action_type == 'Magic' then
        if default_spell_map == 'Cure' then
			if (world.weather_element == 'Light' or world.day_element == 'Light') then
				return "CureWeather"
            end
        elseif default_spell_map == 'Curaga' then
            if (world.weather_element == 'Light' or world.day_element == 'Light') then
                return "CuragaWeather"
            end
		end
	end
	-- if spellMap == 'Threnody' and spell.english:contains("Threnody II") then
		
	-- end
end

function get_lullaby_duration(spell)
    local self = windower.ffxi.get_player()

    local troubadour = false
    local clarioncall = false
    local soulvoice = false
    local marcato = false
 
    for i,v in pairs(self.buffs) do
        if v == 348 then troubadour = true end
        if v == 499 then clarioncall = true end
        if v == 52 then soulvoice = true end
        if v == 231 then marcato = true end
    end

    local mult = 1
    
    if player.equipment.range == 'Daurdabla' then mult = mult + 0.3 end -- change to 0.25 with 90 Daur
    if player.equipment.range == "Gjallarhorn" then mult = mult + 0.4 end -- change to 0.3 with 95 Gjall
    if player.equipment.range == "Marsyas" then mult = mult + 0.5 end

    if player.equipment.main == "Carnwenhan" then mult = mult + 0.5 end -- 0.1 for 75, 0.4 for 95, 0.5 for 99/119
    if player.equipment.main == "Legato Dagger" then mult = mult + 0.05 end
    if player.equipment.main == "Kali" then mult = mult + 0.05 end
    if player.equipment.sub == "Kali" then mult = mult + 0.05 end
    if player.equipment.sub == "Legato Dagger" then mult = mult + 0.05 end
    if player.equipment.neck == "Aoidos' Matinee" then mult = mult + 0.1 end
    if player.equipment.neck == "Mnbw. Whistle +1" then mult = mult + 0.2 end
    if player.equipment.neck == "Mnbw. Whistle +1 +1" then mult = mult + 0.3 end
    if player.equipment.body == "Fili Hongreline +1" then mult = mult + 0.12 end
    if player.equipment.legs == "Inyanga Shalwar +2" then mult = mult + 0.15 end
    if player.equipment.legs == "Inyanga Shalwar +2" then mult = mult + 0.17 end
    if player.equipment.feet == "Brioso Slippers" then mult = mult + 0.1 end
    if player.equipment.feet == "Brioso Slippers +1" then mult = mult + 0.11 end
    if player.equipment.feet == "Brioso Slippers +2" then mult = mult + 0.13 end
    if player.equipment.feet == "Brioso Slippers +3" then mult = mult + 0.15 end
    if player.equipment.hands == 'Brioso Cuffs +1' then mult = mult + 0.1 end
    if player.equipment.hands == 'Brioso Cuffs +3' then mult = mult + 0.1 end
    if player.equipment.hands == 'Brioso Cuffs +3' then mult = mult + 0.2 end

    if troubadour then
        mult = mult * 2
    end

    if spell.en == "Foe Lullaby II" or spell.en == "Horde Lullaby II" then 
        base = 60
    elseif spell.en == "Foe Lullaby" or spell.en == "Horde Lullaby" then 
        base = 30
    end

    totalDuration = math.floor(mult * base)
        
    -- Job Points Buff
    totalDuration = totalDuration + self.job_points.brd.lullaby_duration
    if troubadour then 
        totalDuration = totalDuration + self.job_points.brd.lullaby_duration
        -- adding it a second time if Troubadour up
    end

    if clarioncall then
        if troubadour then 
            totalDuration = totalDuration + (self.job_points.brd.clarion_call_effect * 2 * 2)
            -- Clarion Call gives 2 seconds per Job Point upgrade.  * 2 again for Troubadour
        else
            totalDuration = totalDuration + (self.job_points.brd.clarion_call_effect * 2)
            -- Clarion Call gives 2 seconds per Job Point upgrade. 
        end
    end
    
    if marcato and not soulvoice then
        totalDuration = totalDuration + self.job_points.brd.marcato_effect
    end

    -- Create the custom timer
    if spell.english == "Foe Lullaby II" or spell.english == "Horde Lullaby II" then
        send_command('@timers c "Lullaby II ['..spell.target.name..']" ' ..totalDuration.. ' down spells/00377.png')
    elseif spell.english == "Foe Lullaby" or spell.english == "Horde Lullaby" then
        send_command('@timers c "Lullaby ['..spell.target.name..']" ' ..totalDuration.. ' down spells/00376.png')
    end
end


