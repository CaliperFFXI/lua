-- Original: Motenten / Arislan Modified: Caliper -of- Asura 
function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
	-- Load player include file.
end

function job_setup()
    state.Buff['Sublimation: Activated'] = buffactive['Sublimation: Activated'] or false
	state.Buff['Perpetuance'] = buffactive['Perpetuance'] or false
	state.Buff['Addendum: White'] = buffactive['Addendum: White'] or false
	state.Buff['Addendum: Black'] = buffactive['Addendum: Black'] or false
end

function user_setup()
    state.OffenseMode:options('Normal', 'Acc')
    state.CastingMode:options('Normal')
    state.IdleMode:options('Normal')

    state.MagicBurst = M(false, 'Magic Burst')
    state.StormSurge = M(false, 'Stormsurge')
	-- Add spellMap to this list for "auto Perpetuance"
	Perpetuance_Spells = S{'Haste','Flurry','Protect','Shell','Regen','Storm'}
end

-- Custom spell mapping.
function job_get_spell_map(spell, default_spell_map)
	--add_to_chat(122, tostring(default_spell_map)) --troubleshooting line
    if spell.action_type == 'Magic' then
        if default_spell_map == 'Cure' or default_spell_map == 'Curaga' then
            if (world.weather_element == 'Light' or world.day_element == 'Light') then
                return "CureWeather"
            end
		end		
		if default_spell_map == 'Helix' then
			--determine helix element, which can be specially enhanced.
			if spell.element == 'Light' then
				return "LightHelix"
			elseif spell.element == 'Dark' then
				return "DarkHelix"
			end
		end
    end
end

function job_precast(spell, action, spellMap, eventArgs)
    -- Auto Use Echo Drops If You Are Silenced 
    if spell.action_type == 'Magic' and buffactive.Silence then 
		eventArgs.cancel = true 
        send_command('@input /item "Echo Drops" <me>')
	end
	-- Auto Perpetuance.
    if spell.action_type == 'Magic' then 
		if (state.Buff['Addendum: White'] and Perpetuance_Spells:contains(spellMap)) then
			if not spell.target.charmed and not state.Buff['Perpetuance'] then			
				local spell_recasts = windower.ffxi.get_spell_recasts()
				if spell_recasts[spell.recast_id] < 2 then
					send_command('@input /ja Perpetuance <me>; wait 1.5; input /ma "'..spell.name..'" '..spell.target.name)
					eventArgs.cancel = true
					return
				end
			end
		end
	end
end

function job_post_precast(spell, action, spellMap, eventArgs)
    if (spell.type == "WhiteMagic" and (buffactive["Light Arts"] or buffactive["Addendum: White"])) or
        (spell.type == "BlackMagic" and (buffactive["Dark Arts"] or buffactive["Addendum: Black"])) then
        equip(sets.precast.FC.Grimoire)
    elseif spell.name == 'Impact' then
        equip(sets.precast.FC.Impact)
    end
end

function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.skill == 'Elemental Magic' or spell.english == "Kaustra" then
        if (spell.element == world.day_element or spell.element == world.weather_element) then
            equip(sets.Obi)
            if buffactive['Klimaform'] then
                equip(sets.buff['Klimaform'])
            end
        end
    end
    -- if spell.skill == 'Enfeebling Magic' then
        -- if spell.type == "WhiteMagic" and (buffactive["Light Arts"] or buffactive["Addendum: White"]) then
            -- equip(sets.LightArts)
        -- elseif spell.type == "BlackMagic" and (buffactive["Dark Arts"] or buffactive["Addendum: Black"]) then
            -- equip(sets.DarkArts)
        -- end
    -- end
    if spell.skill == 'Elemental Magic' and state.MagicBurst.value then
        equip(sets.MagicBurst)
        if spell.english == "Impact" then
            equip(sets.midcast.Impact)
        end
    end
    if spell.skill == 'Enhancing Magic' then
        if state.Buff.Perpetuance then
            equip(sets.buff['Perpetuance'])
        end
        if spellMap == "Storm" and state.StormSurge.value then
            equip (sets.midcast.Stormsurge)
        end
    end
end

function job_aftercast(spell, action, spellMap, eventArgs)

end

