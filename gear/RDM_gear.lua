function init_gear_sets()

    -- Precast sets to enhance JAs
    sets.precast.JA['Chainspell'] = {}

    -- Fast cast sets for spells
    sets.precast.FC = {
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Aya. Cosciales +2",
		feet={ name="Taeon Boots", augments={'"Fast Cast"+5','Phalanx +2',}},
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back=gear.FC_MACC_Cape,
	}

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {})
    sets.precast.FC.Cure = set_combine(sets.precast.FC, {})
    sets.precast.FC.Curaga = sets.precast.FC.Cure
    sets.precast.FC['Healing Magic'] = sets.precast.FC.Cure
    sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {})
	sets.precast.FC['Dispelga'] = set_combine(sets.precast.FC, {main="Daybreak",})
    sets.precast.FC.Impact = set_combine(sets.precast.FC, {})
    sets.precast.Storm = set_combine(sets.precast.FC, {})
    sets.precast.FC.Utsusemi = sets.precast.FC.Cure

	--Weapon Skills

    sets.precast.WS = {}

    sets.precast.WS.Acc = set_combine(sets.precast.WS, {})

    sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS, {
		head="Malignance Chapeau",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Aya. Cosciales +2",
		feet="Thereoid Greaves",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear="Mache Earring +1",
		left_ring="Begrudging Ring",
		right_ring="Ilabrat Ring",
		back="Relucent Cape",
	})

    sets.precast.WS['Chant du Cygne'].Acc = set_combine(sets.precast.WS['Chant du Cygne'], {})

    sets.precast.WS['Vorpal Blade'] = sets.precast.WS['Chant du Cygne']
    sets.precast.WS['Vorpal Blade'].Acc = sets.precast.WS['Chant du Cygne'].Acc

    sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Rufescent Ring",
		right_ring="Ilabrat Ring",
		back="Relucent Cape",
	})

    sets.precast.WS['Savage Blade'].Acc = set_combine(sets.precast.WS['Savage Blade'], {})

    sets.precast.WS['Death Blossom'] = sets.precast.WS['Savage Blade']
    sets.precast.WS['Death Blossom'].Acc = sets.precast.WS['Savage Blade'].Acc

    sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS, {})

    sets.precast.WS['Requiescat'].Acc = set_combine(sets.precast.WS['Requiescat'], {})

	sets.precast.WS['Empyreal Arrow'] = {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs="Malignance Tights",
		feet="Volte Boots",
		neck="Combatant's Torque",
		waist="Yemaya Belt",
		left_ear="Enervating Earring",
		right_ear="Telos Earring",
		left_ring="Cacoethic Ring +1",
		right_ring="Ilabrat Ring",
		back="Relucent Cape",
	}
	
	sets.precast.WS['Seraph Blade'] = set_combine(sets.precast.WS, {
		ammo="Pemphredo Tathlum",
		head="C. Palug Crown",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Sacro Cord",
		left_ear="Moonshade Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring="Weather. Ring",
		back="Izdubar Mantle",
	})

    sets.precast.WS['Sanguine Blade'] = set_combine(sets.precast.WS, {})
		
	-- Midcast
	
	-- ConserveMP set used in many set_combine functions. Place common items here.
	sets.ConserveMP = {
		ammo="Pemphredo Tathlum",
		head="Vanya Hood", 
		neck="Incanter's Torque",
		left_ear="Mendi. Earring",
		right_ear="Gifted Earring",
		back="Fi Follet Cape +1",
		waist="Luminary Sash",
	}

    sets.midcast.FastRecast = sets.precast.FC

    sets.midcast.SpellInterrupt = {}

	-- Curing / Healing Magic

    sets.midcast.Cure = {
		head="Gende. Caubeen +1",
		body="Chironic Doublet", 
		hands="Malignance Gloves",
		legs="Atrophy Tights +2",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Luminary Sash",
		left_ear="Mendi. Earring",
		right_ear="Eabani Earring",
		left_ring="Defending Ring",
		right_ring="Lebeche Ring",
		back="Solemnity Cape",
	}
	
    sets.midcast.CureWeather = set_combine(sets.midcast.Cure, {
		main="Chatoyant Staff",
		sub="Enki Strap",
		waist="Hachirin-no-Obi",
	})
	
    sets.midcast.Curaga = set_combine(sets.midcast.Cure, {})

    sets.midcast.StatusRemoval = set_combine(sets.ConserveMP,{
		left_ring="Ephedra Ring",
		right_ring="Ephedra Ring",
	})

    sets.midcast.Cursna = set_combine(sets.midcast.StatusRemoval, {
		feet="Gende. Galosh. +1",
		neck="Malison Medallion",
		left_ring="Ephedra Ring",
		right_ring="Ephedra Ring",
	})

	-- Enhancing Magic Duration
	sets.midcast['Enhancing Magic'] = set_combine(sets.ConserveMP,{
		main="Daybreak",
	    sub="Ammurapi Shield",
		head=gear.Telchine_Head,
		body=gear.Telchine_Body,
		hands="Atrophy Gloves +2",
		legs=gear.Telchine_Legs,
		feet="Leth. Houseaux +1",
		neck="Dls. Torque +1",
		waist="Embla Sash",
		back=gear.FC_MACC_Cape,
	})
	
	-- Enhancing Skill
    sets.midcast.EnhancingSkill = set_combine(sets.midcast['Enhancing Magic'],{
		head="Befouled Crown",
		body=gear.Telchine_Body,
		hands="Chironic Gloves",
		legs="Carmine Cuisses +1",
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ear="Andoaa Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Ghostfyre Cape",
	})
		
    sets.midcast.Refresh = set_combine(sets.midcast['Enhancing Magic'], {legs="Leth. Fuseau +1",})
    
	sets.midcast.Phalanx = set_combine(sets.midcast['Enhancing Magic'], {
		body=gear.Taeon_Body,
		hands=gear.Taeon_Hands,
		legs=gear.Taeon_Legs,
		feet=gear.Taeon_Feet,
	})
    
    sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'], {left_ring="Sheltered Ring"})
    sets.midcast.Shell = sets.midcast.Protect
	
	-- When casting on another player. (enhancing magic)
    sets.buff.ComposureOther = set_combine(sets.midcast['Enhancing Magic'], {
		head="Leth. Chappel +1",
		legs="Leth. Fuseau +1",
		feet="Leth. Houseaux +1",
	})
	
    sets.buff.Saboteur = {}
	
	
	sets.midcast.Enfeeble = {
		main="Naegling",
		sub="Ammurapi Shield",
		range="Kaja Bow",
		head="C. Palug Crown",
		body="Atrophy Tabard +2",
		hands="Regal Cuffs",
		legs="Chironic Hose",
		feet="Malignance Boots",
		neck="Dls. Torque +1",
		waist="Luminary Sash",
		left_ear="Regal Earring",
		right_ear="Snotra Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back=gear.FC_MACC_Cape,
	}
	
	-- Skill Based Enfeebles (Frazzle / Distract)
	sets.midcast.SkillEnfeeble = set_combine(sets.midcast.Enfeeble,{
		main=gear.Enfeebling_Grio,
		sub="Enki Strap",
		head="Befouled Crown",
		neck="Incanter's Torque",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
	})

	-- Effect based Enfeebles (Dia)
	sets.midcast.EnfeebleEffect = set_combine(sets.midcast.Enfeeble,{
		ammo="Regal Gem"
	})

	-- Dark Magic
    sets.midcast['Dark Magic'] = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Erra Pendant",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Archon Ring",
		right_ring="Evanescence Ring",
		back="Aurist's Cape +1",
	}

	sets.midcast.Dispelga = set_combine(sets.midcast.Enfeeble, {main="Daybreak" })
    sets.midcast.Drain = set_combine(sets.midcast['Dark Magic'], {waist="Fucho-no-Obi"})
    sets.midcast.Aspir = sets.midcast.Drain
    sets.midcast.Stun = sets.midcast['Dark Magic']


    sets.midcast['Elemental Magic'] = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="C. Palug Crown",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Jhakri Ring",
		back="Izdubar Mantle",
	}

	-- Elemental Magic
    sets.midcast.Impact = set_combine(sets.midcast['Elemental Magic'], {})

    sets.midcast.Utsusemi = sets.midcast.SpellInterrupt

    -- Initializes trusts at iLvl 119
    sets.midcast.Trust = sets.precast.FC

	-- sets.idle[idleScope][state.IdleMode][Pet[Engaged]][CustomIdleGroups]

	-- Idle Sets
    sets.idle = {
		main="Daybreak",
		sub="Genmei Shield",
		head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Ethereal Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Solemnity Cape",
	}

    sets.idle.Town = set_combine(sets.idle, {legs="Carmine Cuisses +1"})
	
	sets.idle.Field = set_combine(sets.idle,{})
	
    sets.idle.Weak = set_combine(sets.idle, {})
	
	sets.idle.Refresh = set_combine(sets.idle, {
		main="Daybreak",
		ammo="Homiliary",
		body="Jhakri Robe +2",
	})
	
	
    sets.resting = set_combine(sets.idle, {})

    -- Defense Sets

    sets.defense.PDT = {
		main="Daybreak",
		sub="Genmei Shield",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Ethereal Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Solemnity Cape",
	}
    sets.defense.MDT = sets.defense.PDT

	--COnditional Sets
    sets.Kiting = {legs="Carmine Cuisses +1"}
    sets.latent_refresh = {waist="Fucho-no-Obi"}
	sets.magic_burst = {}
	
    -- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups

    sets.engaged = {
		main="Naegling",
		sub="Genmei Shield",
		ammo="Ginsen",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist="Reiki Yotai",
		left_ear="Sherida Earring",
		right_ear="Dedition Earring",
		left_ring="Hetairoi Ring",
		right_ring="Ilabrat Ring",
		back="Relucent Cape",
	}

    sets.engaged.Acc = set_combine(sets.engaged, {
		right_ear="Telos Earring",
	})
	
	sets.engaged.DualWield = set_combine(sets.engaged, {
		sub="Daybreak",
		left_ear="Suppanomimi",
		waist="Reiki Yotai",
	})
	sets.engaged.DualWield.Acc = set_combine(sets.engaged.DualWield, {})
	
    sets.engaged.Hybrid = {}
	
    sets.TreasureHunter = {body=gear.Chironic_Body_TH,waist="Chaac belt", feet="Volte Boots"}

    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}

    sets.Obi = {waist="Hachirin-no-Obi"}
    sets.CP = {back="Mecisto. Mantle"}

end
