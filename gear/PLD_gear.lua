function init_gear_sets()

	-- JSE -- 
	-- PLD 
	gear.PLD_Cure_SIRD = { name="Rudianos's Mantle", augments={'HP+60','HP+20','"Cure" potency +10%','Spell interruption rate down-10%',}}		
	gear.PLD_FC_PDT = { name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Phys. dmg. taken-10%',}}
	gear.PLD_TP = { name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}}
	gear.PLD_TP_DA = { name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	gear.PLD_Idle_Enmity = { name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}}
    
	organizer_items = {
		echos="Echo Drops",
		water="Holy Water",
		misoramen="Miso Ramen +1",
		mantles="Rudianos's Mantle",
	}	
	
	--	Full Enmity Set, place common items here to be combined into sets below.
	sets.Enmity = {
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
	-- Default precast set, equips enmity gear unless tagged specifically.
	sets.precast.JA = sets.Enmity
	
    sets.precast.JA['Invincible'] = {legs={ name="Cab. Breeches", augments={'Enhances "Invincible" effect',}},}
    sets.precast.JA['Holy Circle'] = {}
    sets.precast.JA['Shield Bash'] = {}
    sets.precast.JA['Sentinel'] = {feet={ name="Cab. Leggings", augments={'Enhances "Guardian" effect',}},}
    sets.precast.JA['Rampart'] = {head={ name="Cab. Coronet", augments={'Enhances "Iron Will" effect',}},}
    sets.precast.JA['Fealty'] = {body={ name="Cab. Surcoat", augments={'Enhances "Fealty" effect',}},}
    sets.precast.JA['Divine Emblem'] = {feet="Chev. Sabatons +1"}
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
    sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS, {
		ammo="Coiste Bodhar",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Cessance Earring",
		right_ear="Telos Earring",
		left_ring="Rufescent Ring",
		right_ring="Begrudging Ring",
		back=gear.PLD_TP,
	})
	
	sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
		ammo="Coiste Bodhar",
		head="Sulevia's Mask +2",
		body="Sulevia's Plate. +2",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Sulev. Leggings +2",
		neck="Caro Necklace",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Thrud Earring",
		left_ring="Rufescent Ring",
		right_ring="Regal Ring",
		back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	})
	    			
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
		back="Weard Mantle",
	})

	-- Max Defense Set for majesty
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
		ammo="Staunch Tathlum",
		head={ name="Sakpata's Helm", priority=10},
		body={ name="Sakpata's Plate", priority=12},
		hands={ name="Sakpata's Gauntlets", priority=9},
		legs={ name="Sakpata's Cuisses", priority=11},
		feet={ name="Sakpata's Leggings", priority=8},
		neck="Warder's Charm +1",
		waist="Carrier's Sash",	
		left_ear="Eabani Earring",
		right_ear="Thureous Earring",
		left_ring={ name="Moonlight Ring",bag="wardrobe", priority=14},
		right_ring={ name="Moonlight Ring",bag="wardrobe2", priority=13},
		back=gear.PLD_Idle_Enmity,
	}
		
	-- Idle with state.IdleMode 'Refresh'
	sets.idle.HP = set_combine(sets.idle, {
		neck={ name="Unmoving Collar +1", priority=15},
		waist="Asklepian Belt",
		left_ear={name="Tuisto Earring", priority=11},
		right_ear={name="Odnowa Earring +1", priority=10},
	})

	--Movement speed item equipped when kiting mode on.(All States)
    sets.Kiting = {legs="Carmine Cuisses +1"}

    sets.idle.Town = set_combine(sets.idle, sets.Kiting)
	sets.idle.Town.HP = set_combine(sets.idle.HP, sets.Kiting)
    
    sets.idle.Weak = set_combine(sets.idle, {})
	
	sets.idle.Weak.HP = set_combine(sets.idle, {})
    
    sets.idle.Weak.Reraise = set_combine(sets.idle, {})
    
    sets.resting = sets.idle.Refresh

    -- Engaged sets
    -- Variations for TP weapon and offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups
	
	-- Engaged with no specific DefenseMode or OffenseMode
    sets.engaged = {
		ammo="Coiste Bodhar",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Combatant's Torque",
		waist="Tempus Fugit",
		left_ear="Telos Earring",
		right_ear="Dedition Earring",
		left_ring={ name="Moonlight Ring",bag="wardrobe", priority=14},
		right_ring={ name="Moonlight Ring",bag="wardrobe2", priority=13},
		back=gear.PLD_TP,
		-- ammo="Coiste Bodhar",
		-- head={ name="Hjarrandi Helm", priority=10},
		-- body={ name="Hjarrandi Breast.", priority=12},
		-- hands={ name="Sakpata's Gauntlets", priority=9},
		-- legs={ name="Sakpata's Cuisses", priority=11},
		-- feet={ name="Sakpata's Leggings", priority=8},
		-- neck="Combatant's Torque",
		-- waist="Tempus Fugit",
		-- left_ear="Telos Earring",
		-- right_ear="Dedition Earring",
		-- left_ring={ name="Moonlight Ring",bag="wardrobe", priority=14},
		-- right_ring={ name="Moonlight Ring",bag="wardrobe2", priority=13},
		-- back=gear.PLD_TP,
	}
	-- Engaged with OffenseMode 'Acc'
    sets.engaged.Acc = set_combine(sets.engaged, {})	
	
	-- Hybrid 'HP' mode
    sets.engaged.HP = set_combine(sets.engaged, {
		head={ name="Sakpata's Helm", priority=10},
		body={ name="Sakpata's Plate", priority=12},
		waist="Sailfi Belt +1",
		neck={ name="Unmoving Collar +1", priority=15},
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring={ name="Moonlight Ring",bag="wardrobe", priority=14},
		right_ring={ name="Moonlight Ring",bag="wardrobe2", priority=13},
	})
    sets.engaged.HP.Acc = set_combine(sets.engaged, {})
	
	-- Ochain Specific
	sets.engaged.Ochain = set_combine(sets.engaged, {})
	sets.engaged.Ochain.HP = set_combine(sets.engaged.HP, {})
    sets.engaged.Ochain.Acc = set_combine(sets.engaged, {})	
    sets.engaged.Ochain.Acc.HP = set_combine(sets.engaged.HP, {})	
	
	-- Aegis Specific
	sets.engaged.Aegis = set_combine(sets.engaged, {})
	sets.engaged.Aegis.HP = set_combine(sets.engaged.HP, {})
    sets.engaged.Aegis.Acc = set_combine(sets.engaged, {})	
    sets.engaged.Aegis.Acc.HP = set_combine(sets.engaged.HP, {})	
	
	-- Srivatsa Specific
	sets.engaged.Srivatsa = set_combine(sets.engaged, {})
	sets.engaged.Srivatsa.HP = set_combine(sets.engaged, {})
	sets.engaged.Srivatsa.Acc = set_combine(sets.engaged, {})
	sets.engaged.Srivatsa.Acc.HP = set_combine(sets.engaged.HP, {})
	
    -- Conditional Sets
    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
	sets.LugraLeft = {left_ear="Lugra Earring +1"}
	
	sets.AM3 = {
		ammo="Coiste Bodhar",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Flam. Manopolas +2",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		neck="Combatant's Torque",
		waist="Tempus Fugit",
		left_ear="Digni. Earring",
		right_ear="Dedition Earring",
		left_ring={ name="Moonlight Ring",bag="wardrobe", priority=14},
		right_ring={ name="Moonlight Ring",bag="wardrobe2", priority=13},
		back=gear.PLD_TP,
	}	
	
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