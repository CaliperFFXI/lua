function init_gear_sets()
    
	organizer_items = {
		echos="Echo Drops",
		misoramen="Miso Ramen +1",
		mantles="Rudianos's Mantle",
	}	
	
	--	Full Enmity Set, place common items here to be combined into sets below.
	sets.Enmity = {
		--sub="Srivatsa",
		ammo="Sapience Orb",
		head={ name="Loess Barbuta +1", priority=10},
		body={ name="Rev. Surcoat +3", priority=12},
		hands={ name="Souv. Handsch. +1", priority=11},
		legs={ name="Souv. Diechlings +1", priority=9},
		feet={ name="Souveran Schuhs +1", priority=8},
		neck={ name="Unmoving Collar +1", priority=15},
		waist={ name="Creed Baudrier", priority=13},
		left_ear={ name="Tuisto Earring", priority=14},
		right_ear="Cryptic Earring",
		left_ring="Apeile Ring +1",
		right_ring="Apeile Ring",
		back=gear.PLD_Idle_Enmity,
	}
	
	-- Spell Interruption rate down Master Set // requires 102% to gaurantee spellcast.
	sets.SIRD = {    
		ammo="Staunch Tathlum",
		head={ name="Souv. Schaller +1", priority=13},
		body={ name="Rev. Surcoat +3", priority=14},
		hands={ name="Souv. Handsch. +1", priority=12},
		legs="Founder's Hose",
		feet={ name="Odyssean Greaves", augments={'Attack+21','Enmity+7',}},
		neck="Loricate Torque +1",
		waist="Audumbla Sash",
		left_ear={ name="Tuisto Earring", priority=10},
		right_ear="Knightly Earring",
		left_ring={ name="Moonlight Ring", bag="wardrobe2", priority=11},
		right_ring={ name="Gelatinous Ring +1", priority=15},
		back=gear.PLD_FC_PDT,
	}
	
    -- Precast 
    sets.precast.JA['Invincible'] = {legs={ name="Cab. Breeches", augments={'Enhances "Invincible" effect',}},}
    sets.precast.JA['Holy Circle'] = {}
    sets.precast.JA['Shield Bash'] = {}
    sets.precast.JA['Sentinel'] = {feet={ name="Cab. Leggings", augments={'Enhances "Guardian" effect',}},}
    sets.precast.JA['Rampart'] = {head={ name="Cab. Coronet", augments={'Enhances "Iron Will" effect',}},}
    sets.precast.JA['Fealty'] = {body={ name="Cab. Surcoat", augments={'Enhances "Fealty" effect',}},}
    sets.precast.JA['Divine Emblem'] = {}
    sets.precast.JA['Cover'] = {}
    sets.precast.JA['Chivalry'] = {hands="Cab. Gauntlets"}
	sets.precast.JA['Majesty'] = {}
	
	sets.precast.JA['Provoke'] = sets.Enmity
	sets.precast.JA['Warcry'] = sets.Enmity
	sets.precast.JA['Defender'] = sets.Enmity
  
    -- Fast cast sets for spells
    sets.precast.FC = {
		ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={name="Rev. Surcoat +3", priority=15},
		hands={name="Souv. Handsch. +1", priority=14}, 
		legs={name="Souv. Diechlings +1", priority=12},
		feet={name="Souveran Schuhs +1", priority=13},
		neck="Voltsurge Torque",
		waist="Creed Baudrier", 
		left_ear={name="Tuisto Earring", priority=11},
		right_ear={name="Odnowa Earring +1", priority=10},
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back=gear.PLD_FC_PDT,
	}
    
	-- Weaponskill sets
    sets.precast.WS = {}
    sets.precast.WS.Acc = set_combine(sets.precast.WS, {})
	
	sets.precast.WS['Atonement'] = set_combine(sets.Enmity, {})
    sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS, {})
    sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {})
	    			
    -- Midcast sets	
	sets.midcast['Blue Magic'] = set_combine(sets.SIRD, {})
	sets.midcast['Divine Magic'] = set_combine(sets.SIRD, {})
    sets.midcast['Enhancing Magic'] = set_combine(sets.SIRD, {hands="Regal Gauntlets"})
	sets.midcast['White Magic'] = set_combine(sets.SIRD,{})
	sets.midcast['Healing Magic'] = set_combine(sets.SIRD,{})
	
	sets.midcast.Poisonga = set_combine(sets.SIRD, {})
	sets.midcast.Jettatura = sets.Enmity
	sets.midcast.Flash = sets.Enmity
	sets.midcast.Stun = sets.Enmity

	sets.midcast.Phalanx = set_combine(sets.midcast['Enhancing Magic'], {
		body={ name="Valorous Mail", augments={'Attack+5','"Snapshot"+3','Phalanx +5','Accuracy+5 Attack+5',}},
		back="Weard Mantle",
	})

	sets.midcast.Protect = set_combine(sets.SIRD, {
		sub="Srivatsa",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Regal Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Sacro Gorget",
		waist="Audumbla Sash",
		left_ear="Tuisto Earring",
		right_ear="Thureous Earring",
		left_ring="Defending Ring",
		right_ring="Sheltered Ring",
	})
	
    sets.midcast.Shell = set_combine(sets.SIRD, {
		hands="Regal Gauntlets",
		right_ring="Sheltered Ring"
	})
	
	sets.midcast.Cure = set_combine(sets.SIRD, {
		body={ name="Sakpata's Plate", priority=15},
		neck="Sacro Gorget",
		back=gear.PLD_Cure_SIRD,
	})
				
    -- Defense sets
    
	--	priorities Souveran
	--	body head hands legs feet
	--	priorities Sakpata
	--	head={ name="Sakpata's Helm", priority=13},
	--	body={ name="Sakpata's Plate", priority=15},
	--	hands={ name="Sakpata's Gauntlets", priority=12},
	--	legs={ name="Sakpata's Cuisses", priority=14},
	--	feet={ name="Sakpata's Leggings", priority=11},

    sets.defense.PDT = {}
    sets.defense.MDT = set_combine(sets.defense.PDT, {})
		
	-- Twilight Mail equips automatically if Doomed ( All states ) or if hybrid mode is 'Reraise'
	sets.Reraise = {    
		head="Twilight Helm",
		body="Twilight Mail",
	}

    -- Idle sets
    sets.idle = {
		ammo="Homiliary",
		head={ name="Sakpata's Helm", priority=10},
		--body={ name="Rev. Surcoat +3", priority=12},
		body={ name="Sakpata's Plate", priority=12},
		hands={ name="Sakpata's Gauntlets", priority=9},
		legs={ name="Sakpata's Cuisses", priority=11},
		feet={ name="Sakpata's Leggings", priority=8},
		neck={ name="Unmoving Collar +1", priority=15},
		waist="Asklepian Belt",
		left_ear="Eabani Earring",
		right_ear="Thureous Earring",
		left_ring={ name="Moonlight Ring",bag="wardrobe", priority=14},
		right_ring={ name="Moonlight Ring",bag="wardrobe2", priority=13},
		back=gear.PLD_Idle_Enmity,
	}
		
	-- Idle with state.IdleMode 'Refresh'
	sets.idle.HP = set_combine(sets.idle, {
		left_ear={name="Tuisto Earring", priority=11},
		right_ear={name="Odnowa Earring +1", priority=10},
	})

	--Movement speed item equipped when kiting mode on.(All States)
    sets.Kiting = {legs="Carmine Cuisses +1"}

    sets.idle.Town = set_combine(sets.idle, sets.Kiting)
	sets.idle.Town.HP = set_combine(sets.idle.HP, sets.Kiting)
    
    sets.idle.Weak = {}
    
    sets.idle.Weak.Reraise = {}
    
    sets.resting = sets.idle.Refresh

    -- Engaged sets
    -- Variations for TP weapon and offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups
	
	-- Engaged with no specific DefenseMode or OffenseMode
    sets.engaged = {
		ammo="Ginsen",
		head={ name="Sakpata's Helm", priority=10},
		--body={ name="Rev. Surcoat +3", priority=12},
		body={ name="Sakpata's Plate", priority=12},
		hands={ name="Sakpata's Gauntlets", priority=9},
		legs={ name="Sakpata's Cuisses", priority=11},
		feet={ name="Sakpata's Leggings", priority=8},
		neck={ name="Unmoving Collar +1", priority=15},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Dedition Earring",
		left_ring={ name="Moonlight Ring",bag="wardrobe", priority=14},
		right_ring={ name="Moonlight Ring",bag="wardrobe2", priority=13},
		back=gear.PLD_TP,
	}
	-- Engaged with OffenseMode 'Acc'
    sets.engaged.Acc = set_combine(sets.engaged, {})	
	
	-- Hybrid 'HP' mode
    sets.engaged.HP = set_combine(sets.engaged, {left_ear="Tuisto Earring",right_ear="Odnowa Earring +1",})
    sets.engaged.HP.Acc = set_combine(sets.engaged, {left_ear="Tuisto Earring",right_ear="Odnowa Earring +1",})
	
	-- Ochain Specific
	sets.engaged.Ochain = set_combine(sets.engaged, {})
	sets.engaged.Ochain.HP = set_combine(sets.engaged, {left_ear="Tuisto Earring",right_ear="Odnowa Earring +1",})
    sets.engaged.Ochain.Acc = set_combine(sets.engaged, {})	
    sets.engaged.Ochain.Acc.HP = set_combine(sets.engaged.HP, {body="Hjarrandi Breast."})	
	
	-- Aegis Specific
	sets.engaged.Aegis = set_combine(sets.engaged, {})
	sets.engaged.Aegis.HP = set_combine(sets.engaged, {left_ear="Tuisto Earring",right_ear="Odnowa Earring +1",})
    sets.engaged.Aegis.Acc = set_combine(sets.engaged, {})	
    sets.engaged.Aegis.Acc.HP = set_combine(sets.engaged.HP, {body="Hjarrandi Breast."})	
	
	-- Srivatsa Specific
	sets.engaged.Srivatsa = set_combine(sets.engaged, {})
	sets.engaged.Srivatsa.HP = set_combine(sets.engaged, {left_ear="Tuisto Earring",right_ear="Odnowa Earring +1",})
	sets.engaged.Srivatsa.Acc = set_combine(sets.engaged, {})
	sets.engaged.Srivatsa.Acc.HP = set_combine(sets.engaged.HP, {body="Hjarrandi Breast."})
	
    -- Conditional Sets
    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
	
	-- React Sets
	-- //react add Caliper "Cure V" ready "gs equip sets.CureRecieved"
	sets.PhalanxReceived = {
		body="Valorous Mail",
		hands="Souv. Handsch. +1",
		legs="Sakpata's Cuisses",
		feet="Souveran Schuhs +1",
		back="Weard Mantle",
	}
	
	-- Regen Recieved requires React.lua
	sets.RegenReceived = {neck="Sacro Gorget"}
	
	-- Cure Received requires React.lua
	sets.CureReceived = {hands="Souv. Handsch. +1",feet="Souveran Schuhs +1"}

    sets.buff.Cover = {}
    sets.CP = {back="Mecisto. Mantle"}
    sets.TreasureHunter = {waist="Chaac belt", legs=gear.Valorous_Legs_TH, feet="Volte Boots"}
	
	sets.weapons.Ochain = {main="Burtgang",sub="Ochain"}
	sets.weapons.Aegis = {main="Burtgang",sub="Aegis"}
	sets.weapons.Srivatsa = {main="Burtgang",sub="Srivatsa"}
	
end