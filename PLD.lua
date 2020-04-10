-- Original: Motenten-Kinematics, Modified: Caliper -of- Asura 		

function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end    
-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    state.Buff.Sentinel = buffactive.sentinel or false
    state.Buff.Cover = buffactive.cover or false
    state.Buff.Doom = buffactive.doom or false
	state.Buff.Aquaveil = buffactive.aquaveil or false
	state.Buff.Majesty = buffactive.majesty or false
		
	-- Ambuscade Capes
	gear.Cure_SIRD_Cape = {name="Rudianos's Mantle", augments={'VIT+20','"Cure" potency +10%','Spell interruption rate down-10%',}}		
	gear.FC_PDT_CAPE = {name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Phys. dmg. taken-10%',}}
	gear.TP_CAPE = { name="Rudianos's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}

	-- Reive Cape
	gear.Phalanx_Cape = {name="Weard Mantle"}
	
end

function user_setup()

    state.OffenseMode:options('Normal', 'Acc')
    state.HybridMode:options('Normal','Reraise')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.CastingMode:options('Normal','PDT','MDT')
    state.PhysicalDefenseMode:options('PDT')
    state.MagicalDefenseMode:options('MDT')
	state.IdleMode:options('Normal', 'Refresh')
	
	state.WeaponSet = M{['description']='Weapon Set','Malignance Sword','Malignance Pole'}
	state.WeaponLock = M(false, 'Weapon Lock')	
	state.CP = M(false, 'Capacity Points Mode')
    state.EquipShield = M(false, 'Equip Shield w/Defense')
	state.DualWield = M(false, 'Dual Wield Mode')
    include('Mote-TreasureHunter')

    state.DefenseMode:set('Physical') -- Set's Physical Defense Mode by default
	update_combat_weapon()	    
	
end

-------------------------------------------------------------------------------------------------------------------
-- Job-File specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

function job_update(cmdParams, eventArgs)

    if state.IdleMode.value == 'Refresh' then
		state.DefenseMode:set('None') -- Toggles off DefenseMode to favor refresh set.
	end
	if state.DefenseMode.new_value ~= 'None' then
		state.IdleMode:set('Normal')
	end
	
	--Handles CastingMode to "follow" DefenseMode
	if state.DefenseMode.value == 'Physical' then
		state.CastingMode:set('PDT') --Sets Midcast mode to PDT.
	elseif state.DefenseMode.value == 'Magical' then
		state.CastingMode:set('MDT') --Sets Midcast mode to MDT.
	else 
		state.CastingMode:reset()
	end
	
	update_combat_weapon()
	update_combat_form()
	handle_equipping_gear(player.status) -- Forces gear change at state change.
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
	if ( buffactive.doom or buffactive['Doom'] ) then
		handle_equipping_gear(player.status) -- Forces gear change at state change.
		add_to_chat(122, '~~~~You are Doomed~~~~~') 
	end
end

function customize_defense_set(defenseSet)
   
--    if state.EquipShield.value == true then
--        defenseSet = set_combine(defenseSet, sets[state.DefenseMode.current .. 'Shield'])
--    end
	-- Equip Twilight mail sets.Reraise if Doomed or HybridMode is 'Reraise'
	if ( buffactive.doom or buffactive['Doom'] ) or state.HybridMode.value == 'Reraise' then
        defenseSet = set_combine(defenseSet, sets.buff.Doom, sets.Reraise)
    end
    return defenseSet
end

function customize_melee_set(meleeSet)
	-- CP rule
	if state.CP.current == 'on' then
        meleeSet = set_combine(meleeSet, sets.CP)
    end
	-- Equip Twilight mail sets.Reraise if Doomed, or HybridMode is 'Reraise'
	if ( buffactive.doom or buffactive['Doom'] ) or state.HybridMode.value == 'Reraise' then
        meleeSet = set_combine(meleeSet, sets.buff.Doom, sets.Reraise)
    end
	if ( state.DefenseMode.value == 'Physical' and state.OffenseMode.value == 'Acc' ) then
		meleeSet = set_combine(meleeSet, sets.engaged.Acc.PDT)
	end
	if ( state.DefenseMode.value == 'Magical' and state.OffenseMode.value == 'Acc' ) then
		meleeSet = set_combine(meleeSet, sets.engaged.Acc.MDT)
	end

	return meleeSet
end

function customize_idle_set(idleSet)
	-- CP rule
    if state.CP.current == 'on' then
	    idleSet = set_combine(idleSet, sets.CP)
    end
	-- Equip Twilight mail sets.Reraise if Doomed or HybridMode is 'Reraise'
	if ( buffactive.doom or buffactive['Doom'] ) or state.HybridMode.value == 'Reraise' then
        idleSet = set_combine(idleSet, sets.buff.Doom, sets.Reraise)
    end
    return idleSet
end

--Weapon Lock function.
function job_state_change(stateField, newValue, oldValue)
	if state.WeaponLock.value == true then
        disable('main','sub')
	else
		enable('main','sub')
	end
end