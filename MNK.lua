-- Original: Motenten Modified: Caliper -of- Asura 
function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
	-- Load player include file.
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
	state.Buff['Footwork'] = buffactive.Footwork or false
    state.Buff['Impetus'] = buffactive.Impetus or false
	state.Buff['Counterstance'] = buffactive.counterstance or false
	state.Buff['Boost'] = buffactive.Boost or false
end

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('Normal','Acc','Crit')
    state.WeaponskillMode:options('Normal','Acc','FullTP')
    state.HybridMode:options('Normal','DT','Counter')
    state.PhysicalDefenseMode:options('PDT')
	
	state.WeaponLock = M(false, 'Weapon Lock')	
	state.CP = M(false, 'Capacity Points Mode')
	
	state.WeaponSet = M{['description']='Weapon Set','Verethragna','Godhands','Staff'}
	
	Previous_Weapon = nil
	
    include('Mote-TreasureHunter')
	--state.TreasureMode:set('Tag')
	
	update_combat_weapon()
end
-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks.
-------------------------------------------------------------------------------------------------------------------

function job_precast(spell, action, spellMap, eventArgs)
	-- Compensate for TP bonuses during weaponskills.
	if spell.type == 'WeaponSkill' then
		if state.CombatWeapon.current == 'Godhands' then
			if player.tp >= 2500 then -- 500 tp bonus from Aeonic Weapons
				state.WeaponskillMode:set('FullTP')
			end
		elseif player.tp >= 2750 then -- 250 Moonshade Bonus
			state.WeaponskillMode:set('FullTP')
		end
	end
end

function job_post_precast(spell, action, spellMap, eventArgs)
	if spell.type == 'WeaponSkill' then
        if state.Buff.Impetus and (spell.english == "Ascetic's Fury" or spell.english == "Victory Smite") then
            --equip(sets.Impetus)
			equip(sets.VictorySmite_Impetus)
		end
        elseif state.Buff.Footwork and (spell.english == "Dragon's Kick" or spell.english == "Tornado Kick") then
            equip(sets.Footwork)
        end
end

function job_aftercast(spell, action, spellMap, eventArgs)
	state.WeaponskillMode:reset() -- reset WS mode for next round.
	if state.Buff.Boost or buffactive.boost then
		eventArgs.handled = true -- if boost is active, cancel aftercast.
	end
end

function job_buff_change(buff, gain) 
	update_combat_form() -- Counterstance check
	if player.status ~= 'Idle' then
		if not midaction() then
            handle_equipping_gear(player.status)
        end
	end
end

function customize_melee_set(meleeSet)
	-- Equips Ask Sash while boost is active, and returns to normal sets otherwise
	if buffactive.Boost then
		meleeSet = set_combine(meleeSet, sets.AskSash)
	end
	--Swaps in Impetus Body to any engaged Set, superceeded by Defense Mode's
	if buffactive.Impetus --[[and state.DefenseMode.value == 'None']] then
		meleeSet = set_combine(meleeSet, sets.Impetus)
	end
	--Swaps in Footwork set to any engaged Set, Superceeded by Defense Mode's
	if buffactive.Footwork --[[and state.DefenseMode.value == 'None']] then
		meleeSet = set_combine(meleeSet, sets.Footwork)
	end
	
	-- CP rule
	if state.CP.current == 'on' then
        meleeSet = set_combine(meleeSet, sets.CP)
    end
	return meleeSet
end

function customize_idle_set(idleSet)
	-- Equips Ask Sash while boost is active, and returns to normal sets otherwise
	if buffactive.Boost then
		idleSet = set_combine(idleSet, sets.AskSash)
	end
	-- CP rule
    if state.CP.current == 'on' then
	    idleSet = set_combine(idleSet, sets.CP)
    end
    return idleSet
end

function customize_defense_set(defenseSet)
	-- Equips Ask Sash while boost is active, and returns to normal sets otherwise
	if buffactive.Boost then
		defenseSet = set_combine(defenseSet, sets.AskSash)
	end
	--Swaps in Impetus Body to any engaged Set, superceeded by Defense Mode's
	if buffactive.Impetus then
		defenseSet = set_combine(defenseSet, sets.Impetus)
	end
	--Swaps in Footwork set to any engaged Set, Superceeded by Defense Mode's
	if buffactive.Footwork then
		defenseSet = set_combine(defenseSet, sets.Footwork)
	end
	return defenseSet
end

function job_state_change(descrip, newVal, oldVal)
	handle_equipping_gear()
end

function job_update(cmdParams, eventArgs)
    update_combat_weapon()
	update_combat_form()
end

function update_combat_form()
	if buffactive.counterstance then
		state.CombatForm:set('Counterstance')
	else
		state.CombatForm:reset()
	end
end

function update_combat_weapon()
	if state.WeaponSet.has_value then
		equip(sets[state.WeaponSet.current])
		state.CombatWeapon:set(state.WeaponSet.current)
	else
		state.CombatWeapon:reset()
	end
end
