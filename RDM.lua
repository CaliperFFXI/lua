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
    state.Buff.Saboteur = buffactive['Saboteur'] or false
	state.Buff.Silence = buffactive['Silence'] or false
			
	-- This var is used to store EnSpell Element for logic functions.
	EnSpell_Element = nil
	
end

function user_setup()

    state.OffenseMode:options('Normal', 'Acc')
    state.HybridMode:options('Normal', 'DT')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.CastingMode:options('Normal','Vagary','Vagary2')
    state.IdleMode:options('Normal','Refresh')
	
	state.RangeLock = M(false, 'Range Lock')
    state.MagicBurst = M(false, 'Magic Burst')
	
	state.WeaponSet = M{['description']='Weapon Set',
		'Idle',
		'SavageBlade',
		'SeraphBlade',
		'CroceaMors',
		'Evisceration',
		'AeolianEdge',
		'EnSpell'
	}
		
	-- Low ninja tool threshhold
	options.ninja_tool_warning_limit = 10
	
end

function job_pretarget(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		eventArgs.cancel = true 
        send_command('input /item "Echo Drops" <me>')
	end
end

function job_precast(spell, action, spellMap, eventArgs)	
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

function job_precast(spell, action, spellMap, eventArgs)
end
		
function job_post_precast(spell, action, spellMap, eventArgs)
end

function job_midcast(spell, action, spellMap, eventArgs)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	--Saboteur Handling
	if spell.skill == 'Enfeebling Magic' or spell.skill == 'Dark Magic' then
		if buffactive.Saboteur then
			equip(sets.buff.Saboteur)
		end
	end	
	--Composure Buff for Party/Alliance
	if spellMap == 'Enhancing Magic' then
		if (spell.target.type == 'PLAYER' or spell.target.type == 'NPC') and buffactive.Composure then
			equip(sets.buff.ComposureOther)
		end
	end	
end

function job_aftercast(spell, action, spellMap, eventArgs)
end

function job_update(cmdParams, eventArgs)
    handle_equipping_gear(player.status)
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
	if player.status == 'Engaged' then	
		handle_equipping_gear(player.status)
	end
	--Troubleshooting
	if _settings.debug_mode then add_to_chat(122, '[ Enspell Mode: ' .. EnSpell_Element .. ' ]') end
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
	if player.equipment.main == "Crocea Mors" then
		if EnSpell_Element ~= "None" or nil then
			-- Matching double weather (w/o day conflict).
			if EnSpell_Element == world.weather_element and (get_weather_intensity() == 2 and EnSpell_Element ~= elements.weak_to[world.day_element]) then
				meleeSet = set_combine(meleeSet, sets.EnspellDamage)
			-- Matching day and weather.
			elseif EnSpell_Element == world.day_element and EnSpell_Element == world.weather_element then
				meleeSet = set_combine(meleeSet, sets.EnspellDamage)
			-- Match day or weather.
			elseif EnSpell_Element == world.day_element or EnSpell_Element == world.weather_element then
				meleeSet = set_combine(meleeSet, sets.EnspellDamage)
			end		
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
	if player.status == 'Idle' then
		idleSet = set_combine(idleSet, sets[state.WeaponSet.current])
	end			
    return idleSet
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

