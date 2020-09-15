function init_gear_sets()
    
	organizer_items = {
		echos="Echo Drops",
		misoramen="Miso Ramen +1",
		mantles="Rudianos's Mantle",
	}	
	
	--Full Enmity Set, place common items here to be combined into sets below.
	sets.Enmity = {
		main="Brilliance",
		-- sub="Srivatsa",
		ammo="Sapience Orb",
		head="Loess Barbuta +1",
		body="Rev. Surcoat +3",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Unmoving Collar +1",
		waist="Creed Baudrier",
		left_ear="Tuisto Earring",
		right_ear="Cryptic Earring",
		left_ring="Apeile Ring +1",
		right_ring="Apeile Ring",
		back="Reiki Cloak",
	}
	
	-- Spell Interruption rate down Master Set // requires 102% to gaurantee spellcast.
	sets.SIRD = {    
		main="Brilliance",
		-- sub="Aegis",
		ammo="Staunch Tathlum",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body="Rev. Surcoat +3",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Founder's Hose", augments={'MND+3','Breath dmg. taken -3%',}},
		feet={ name="Odyssean Greaves", augments={'Phys. dmg. taken -4%','INT+10','Accuracy+3',}},
		neck="Loricate Torque +1",
		waist="Rumination Sash",
		left_ear="Tuisto Earring",
		right_ear="Knightly Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Reiki Cloak",
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
	sets.precast.JA['Majesty'] = sets.Enmity
	
	sets.precast.JA['Provoke'] = sets.Enmity
	sets.precast.JA['Warcry'] = sets.Enmity
	sets.precast.JA['Defender'] = sets.Enmity
  
    -- Fast cast sets for spells
    sets.precast.FC = {
		-- main="Malignance Sword",
		-- sub="Srivatsa",
		ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={name="Rev. Surcoat +3", priority=15},
		hands={name="Souv. Handsch. +1", priority=14}, 
		legs={name="Souv. Diechlings +1", priority=13},
		feet={name="Souveran Schuhs +1", priority=12},
		neck="Voltsurge Torque",
		waist="Creed Baudrier", 
		left_ear={name="Tuisto Earring", priority=11},
		right_ear={name="Odnowa Earring +1", priority=10},
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back=gear.PLD_FC_PDT,
	}
    
	-- Weaponskill sets
    
	-- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {}
	-- Defaul set with state 'Acc'
    sets.precast.WS.Acc = {}
	
    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS, {})
    sets.precast.WS['Requiescat'].Acc = set_combine(sets.precast.WS.Acc, {})
	
    sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS, {
		ammo="Ginsen",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Flam. Manopolas +2",
		legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		feet="Thereoid Greaves",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Mache Earring +1",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Begrudging Ring",
		back=gear.PLD_TP,
	})
	
    sets.precast.WS['Chant du Cygne'].Acc = set_combine(sets.precast.WS.Acc, {})
	
    sets.precast.WS['Sanguine Blade'] = {} 
    
	sets.precast.WS['Atonement'] = {
		ammo="Staunch Tathlum",
		head="Loess Barbuta +1",
		body="Rev. Surcoat +3",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Tuisto Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Rufescent Ring",
		right_ring="Supershear Ring",
		back="Reiki Cloak",
	}
	
	sets.precast.WS['Savage Blade'] = {
		ammo="Ginsen",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +2",
		feet="Sulev. Leggings +2",
		neck="Lissome Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Rufescent Ring",
		right_ring="Regal Ring",
		back=gear,TP_CAPE,
	}
	
	sets.precast.WS['Swift Blade'] = {
		ammo="Ginsen",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +2",
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear="Mache Earring +1",
		left_ring="Rufescent Ring",
		right_ring="Petrov Ring",
		back=gear.PLD_TP,
	}
    
	sets.precast.WS['Impulse Drive'] = {}
	
	sets.precast.WS['Shell Crusher'] = {}
	
    -- Midcast sets	
	
	sets.midcast['Blue Magic'] = set_combine(sets.SIRD,{})
	sets.midcast.Jettatura = sets.Enmity
	sets.midcast.Flash = sets.Enmity
	
	-- Banishga set
	sets.midcast['Divine Magic'] = set_combine(sets.SIRD,{
		main={ name="Brilliance", augments={'Shield skill +10','Divine magic skill +15','Enmity+7','DMG:+15',}},
		body="Rev. Surcoat +3",
		neck="Incanter's Torque",
		waist="Asklepian Belt",
	})	

    sets.midcast['Enhancing Magic'] = set_combine(sets.SIRD,{
		hands="Regal Gauntlets",
		waist="Creed Baudrier", 
	})
	
	sets.midcast.Phalanx = set_combine(sets.midcast['Enhancing Magic'], {    
		back="Weard Mantle",
	})

	sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'], {right_ring="Sheltered Ring"})
    sets.midcast.Shell = sets.midcast.Protect
	
	sets.midcast['White Magic'] = set_combine(sets.SIRD,{})
	sets.midcast['Healing Magic'] = set_combine(sets.SIRD,{})

	-- Full cure potency set.	
	sets.midcast.Cure = set_combine(sets.SIRD, {
		-- main={ name="Brilliance", augments={'Shield skill +10','Divine magic skill +15','Enmity+7','DMG:+15',}},
		-- sub="Aegis",
		ammo="Staunch Tathlum",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Jumalik Mail", augments={'HP+50','Attack+13','Enmity+7','"Refresh"+1',}},
		hands="Macabre Gaunt. +1",
		legs={ name="Founder's Hose", augments={'MND+3','Breath dmg. taken -3%',}},
		feet={ name="Odyssean Greaves", augments={'Phys. dmg. taken -4%','INT+10','Accuracy+3',}},
		neck="Sacro Gorget",
		waist="Rumination Sash",
		left_ear="Nourish. Earring +1",
		right_ear="Knightly Earring",
		right_ring="Supershear Ring",
		back=gear.PLD_Cure_SIRD,
	})
	
	--Cure set for PDT/MDT Defense Mode, equip's when defense mode is Physical.
	sets.midcast.Cure.PDT = {
		-- main="Malignance Sword",
		-- sub="Aegis",
		ammo="Staunch Tathlum",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body="Rev. Surcoat +3",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Founder's Hose", augments={'MND+3','Breath dmg. taken -3%',}},
		feet="Odyssean Greaves",
		neck="Loricate Torque +1",
		waist="Rumination Sash",
		left_ear="Tuisto Earring",
		right_ear="Nourish. Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Rudianos's Mantle", augments={'VIT+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
	}
	
	sets.midcast.Cure.MDT = sets.midcast.Cure.PDT
	
    -- Defense sets
    
    -- Master Defense sets
    sets.defense.PDT = {	    
		-- main="Malignance Sword",
		-- sub="Aegis",
	    ammo="Staunch Tathlum",
		head="Souv. Schaller +1",
		body="Rev. Surcoat +3",
		hands="Souv. Handsch. +1",
		legs="Souv. Diechlings +1",
		feet="Souveran Schuhs +1",
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
		left_ear="Tuisto Earring",
		right_ear="Thureous Earring",
		left_ring="Defending Ring",
		right_ring="Shadow Ring",
		back=gear.PLD_FC_PDT,
	}
	
    sets.defense.MDT = set_combine(sets.defense.PDT, {})
	
	------------------------------------------------
    -- Idle/resting/defense/etc sets
    ------------------------------------------------
	
	--Twilight Mail equips automatically if Doomed ( All states )
	sets.Reraise = {    
		-- main="Malignance Sword",
		-- sub="Aegis",
		ammo="Staunch Tathlum",
		head="Twilight Helm",
		body="Twilight Mail",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back=gear.PLD_FC_PDT,
	}

    -- Idle sets
    sets.idle = {
		-- main="Malignance Sword",
		-- sub="Aegis",
		ammo="Homiliary",
		head="Chev. Armet +1",
		body="Rev. Surcoat +3",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Rev. Leggings +3",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Ethereal Earring",
		right_ear="Thureous Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back=gear.PLD_FC_PDT,
	}
	
	-- Idle with state.DefenseMode 'Physical' 
	sets.idle.PDT = sets.defense.PDT
	
	-- Idle with state.IdleMode 'Refresh'
	sets.idle.Refresh = set_combine(sets.idle, {})

	--Movement speed item equipped when kiting mode on.
    sets.Kiting = {legs="Carmine Cuisses +1"}

    sets.idle.Town = set_combine(sets.idle, sets.Kiting)
    
    sets.idle.Weak = sets.Reraise
    
    sets.idle.Weak.Reraise = set_combine(sets.idle.Weak, sets.Reraise)
    
    sets.resting = sets.idle.Refresh

    -- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups
	
	-- Engaged with no specific DefenseMode or OffenseMode
    sets.engaged = {
		main="Naegling",
		sub="Aegis",
		ammo="Ginsen",
		head="Sulevia's Mask +2",
		body="Hjarrandi Breast.",
		hands="Sulev. Gauntlets +2",
		legs="Valor. Hose",
		feet="Sulev. Leggings +2",
		neck="Lissome Necklace",
		waist="Sailfi Belt +1",
		left_ear="Telos Earring",
		right_ear="Mache Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back=gear.PLD_TP,
	}
	
	-- Engaged with OffenseMode 'Acc'
    sets.engaged.Acc = set_combine(sets.engaged, {})

	-- Engaged with state.DefenseMode set 'Physical'
    sets.engaged.PDT = set_combine(sets.defense.PDT, {})
	
	-- Engaged with state.DefenseMode set 'Physical' and state.OffenseMode set 'Acc'
    sets.engaged.Acc.PDT = set_combine(sets.engaged.Acc, {
		ammo="Ginsen",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Rev. Leggings +3",
		neck="Lissome Necklace",
		waist="Sailfi Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Telos Earring",
		left_ring="Defending Ring",
		right_ring="Regal Ring",
		back=gear.PLD_TP, 
	})
	
	-- Engaged with state.DefenseMode set 'Magical' and state.OffenseMode set 'Acc'
    sets.engaged.Acc.MDT = set_combine(sets.engaged.Acc, {
		ammo="Ginsen",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Rev. Leggings +3",
		neck="Warder's Charm +1",
		waist="Sailfi Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Telos Earring",
		left_ring="Defending Ring",
		right_ring="Regal Ring",
		back=gear.PLD_TP, 
	})	
	
    -- Custom Weapon Sets
	sets.engaged.Staff = {
	    main="Malignance Pole",
		sub="Flanged Grip",
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body="Flamma Korazin +2",
		hands="Flam. Manopolas +2",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		neck="Lissome Necklace",
		waist="Kentarch Belt +1",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Flamma Ring",
		right_ring="Sulevia's Ring",
		back=gear.PLD_TP,
	}
	
	sets.engaged.Staff.PDT = sets.engaged.Staff
	sets.engaged.Staff.Acc = sets.engaged.Staff
	sets.engaged.Staff.Acc.PDT = sets.engaged.Staff

    -- Conditional Sets
    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
    sets.buff.Cover = {}
    sets.CP = {back="Mecisto. Mantle"}
    sets.TreasureHunter = {waist="Chaac belt", feet="Volte Boots"}
	
	sets.MagicalShield = {main="Malignance Sword",sub="Aegis"}
	sets.PhysicalShield = {main="Malignance Sword",sub="Srivatsa"}
	sets.Staff = {main="Reikikon",sub="Flanged Grip"}
	
end