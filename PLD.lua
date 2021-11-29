-- Original: Motenten-Kinematics, Modified: Caliper -of- Asura 		

function get_sets()
    mote_include_version = 2
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end    
-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()

	state.Buff['Aftermath: Lv.3'] = buffactive['Aftermath: Lv.3'] or false

    state.Buff.Sentinel = buffactive.sentinel or false
    state.Buff.Cover = buffactive.cover or false
    state.Buff.Doom = buffactive.doom or false
	state.Buff.Aquaveil = buffactive.aquaveil or false
	state.Buff.Majesty = buffactive.majesty or false
	
	-- Enfeebles to track for pretarget cancellation
	state.Buff.Paralyzed = buffactive.paralyzed or false
	state.Buff.Stunned = buffactive.stunned or false
	state.Buff.Terrorized = buffactive.terrorized or false
	state.Buff.Petrification = buffactive.petrified or false
	state.Buff.Amnesia = buffactive.amnesic or false
	
end

function user_setup()

    state.OffenseMode:options('Normal','Acc')
    state.HybridMode:options('Normal','HP')
    state.WeaponskillMode:options('Normal','Acc')
    state.CastingMode:options('Normal','PDT','MDT')
    state.PhysicalDefenseMode:options('PDT')
    state.MagicalDefenseMode:options('MDT')
	state.IdleMode:options('Normal','HP')
	
	state.WeaponSet = M{['description']='Weapon Set',
		'Ochain',
		'Aegis',
		'Srivatsa'
	}

    --state.DefenseMode:set('Physical') -- Set's Physical Defense Mode by default
	--state.CastingMode:set('PDT') --Sets Midcast mode to PDT.
	
end

-------------------------------------------------------------------------------------------------------------------
-- Job-File specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
function job_pretarget(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		eventArgs.cancel = true 
        send_command('input /item "Echo Drops" <me>')
	end
	-- Cancels specific actions to avoid swaps during immobilizing effects
    if buffactive['terror'] or buffactive['petrification'] or buffactive['stun'] or buffactive['sleep'] then
		eventArgs.cancel = true 
        add_to_chat(123, '**!! '..spell.english..' Canceled due to status effect.**')
	end
end

function job_post_precast(spell, action, spellMap, eventArgs)
end


function job_aftercast(spell, action, spellMap, eventArgs)
end

function job_update(cmdParams, eventArgs)
	--handle_equipping_gear(player.status) -- Forces gear change at state change.
end

function job_buff_change(buff,gain)
	if ( buffactive.doom or buffactive['Doom'] ) then
		handle_equipping_gear(player.status) -- Forces gear change at state change.
		add_to_chat(122, '~~~~You are Doomed~~~~~') 
	end
end

function customize_defense_set(defenseSet)
	-- Equip Twilight mail sets.Reraise if Doomed or HybridMode is 'Reraise'
	if (buffactive.doom or buffactive['Doom']) then
        defenseSet = set_combine(defenseSet, sets.buff.Doom)
    end
	if state.HybridMode.value == 'Reraise' then
        defenseSet = set_combine(defenseSet, sets.Reraise)
    end
    return defenseSet
end

function customize_melee_set(meleeSet)
	-- CP rule
	if state.CP.current == 'on' then
        meleeSet = set_combine(meleeSet, sets.CP)
    end
	-- Equip Twilight mail sets.Reraise if Doomed, or HybridMode is 'Reraise'
	if state.HybridMode.value == 'Reraise' then
        meleeSet = set_combine(meleeSet, sets.Reraise)
    end
	-- if state.DefenseMode.value == 'Physical' then
		-- meleeSet = set_combine(meleeSet, sets.engaged.PDT)
	-- end
	-- if state.DefenseMode.value == 'Magical' then
		-- meleeSet = set_combine(meleeSet, sets.engaged.MDT)
	-- end	
	-- if ( state.DefenseMode.value == 'Physical' and state.OffenseMode.value == 'Acc' ) then
		-- meleeSet = set_combine(meleeSet, sets.engaged.Acc.PDT)
	-- end
	-- if ( state.DefenseMode.value == 'Magical' and state.OffenseMode.value == 'Acc' ) then
		-- meleeSet = set_combine(meleeSet, sets.engaged.Acc.MDT)
	-- end
	if (buffactive.doom or buffactive['Doom']) then
        meleeSet = set_combine(meleeSet, sets.buff.Doom)
    end
	return meleeSet
end

function customize_idle_set(idleSet)
	-- CP rule
    if state.CP.current == 'on' then
	    idleSet = set_combine(idleSet, sets.CP)
    end
	-- if state.DefenseMode.value == 'Physical' then
		-- idleSet = set_combine(idleSet, sets.idle.PDT)
	-- end
	-- if state.DefenseMode.value == 'Magical' then
		-- idleSet = set_combine(idleSet, sets.idle.MDT)
	-- end	
	if (buffactive.doom or buffactive['Doom']) then
        idleSet = set_combine(idleSet, sets.buff.Doom)
    end
	if state.HybridMode.value == 'Reraise' then
        idleSet = set_combine(idleSet, sets.Reraise)
    end
    return idleSet
end