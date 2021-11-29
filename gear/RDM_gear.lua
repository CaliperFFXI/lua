function init_gear_sets()

	-- JSE -- 
	-- RDM
	gear.RDM_TP = { name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}}
	gear.RDM_MACC = { name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}}
	gear.RDM_STR_WS = { name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}


    -- Precast sets to enhance JAs
    sets.precast.JA['Chainspell'] = {}

    -- Fast cast sets for spells
		sets.precast.FC = {
		head="Atrophy Chapeau +3",
		body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Witful Belt",
		left_ear="Etiolation Earring",
		right_ear="Thureous Earring",
		left_ring="Weather. Ring",
		right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		back=gear.RDM_MACC,
	}

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {})
    sets.precast.FC.Cure = set_combine(sets.precast.FC, {})
    sets.precast.FC.Curaga = sets.precast.FC.Cure
    sets.precast.FC['Healing Magic'] = sets.precast.FC.Cure
    sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {})
	sets.precast.FC['Dispelga'] = set_combine(sets.precast.FC, {main="Daybreak",})
    sets.precast.FC.Impact = set_combine(sets.precast.FC, {body="Twilight Cloak"})
    sets.precast.Storm = set_combine(sets.precast.FC, {})
    sets.precast.FC.Utsusemi = sets.precast.FC.Cure

	--Weapon Skills

    sets.precast.WS = {}

    sets.precast.WS.Acc = set_combine(sets.precast.WS, {})

    sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS, {
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Ayanmo Corazza +2",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Thereoid Greaves",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Ilabrat Ring",
		right_ring="Begrudging Ring",
		back="Relucent Cape",
	})

    sets.precast.WS['Chant du Cygne'].Acc = set_combine(sets.precast.WS['Chant du Cygne'], {})

    sets.precast.WS['Vorpal Blade'] = sets.precast.WS['Chant du Cygne']
    sets.precast.WS['Vorpal Blade'].Acc = sets.precast.WS['Chant du Cygne'].Acc

    sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck={ name="Dls. Torque +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Regal Earring",
		left_ring="Ilabrat Ring",
		right_ring="Rufescent Ring",
		back=gear.RDM_STR_WS,
	})

    sets.precast.WS['Savage Blade'].Acc = set_combine(sets.precast.WS['Savage Blade'], {})

    sets.precast.WS['Death Blossom'] = sets.precast.WS['Savage Blade']
    sets.precast.WS['Death Blossom'].Acc = sets.precast.WS['Savage Blade'].Acc

    sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS, {
		ammo="Regal Gem",
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Ilabrat Ring",
		right_ring="Rufescent Ring",
	})

    sets.precast.WS['Requiescat'].Acc = set_combine(sets.precast.WS['Requiescat'], {})

	sets.precast.WS['Empyreal Arrow'] = {
		ammo="Demon Arrow",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Combatant's Torque",
		waist="Yemaya Belt",
		left_ear="Enervating Earring",
		right_ear="Telos Earring",
		left_ring="Ilabrat Ring",
		right_ring="Cacoethic Ring +1",
		back="Relucent Cape",
	}
	
	sets.precast.WS['Seraph Blade'] = set_combine(sets.precast.WS, {
		body={ name="Cohort Cloak +1", augments={'Path: A',}},
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		neck="Sanctity Necklace",
		waist="Sacro Cord",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Malignance Earring",
		left_ring="Weather. Ring",
		right_ring="Freke Ring",
		back=gear.RDM_STR_WS,
	})

    sets.precast.WS['Sanguine Blade'] = set_combine(sets.precast.WS, {
		head="Pixie Hairpin +1",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Sacro Cord",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Archon Ring",
		back=gear.RDM_STR_WS,
	})
	
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS, {
		body={ name="Cohort Cloak +1", augments={'Path: A',}},
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Sacro Cord",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring="Arvina Ringlet +1",
		right_ring="Ilabrat Ring",
		back="Izdubar Mantle",
	})
	
	sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS, {
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Aya. Cosciales +2",
		feet="Thereoid Greaves",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear="Mache Earring +1",
		left_ring="Ilabrat Ring",
		right_ring="Begrudging Ring",
		back="Relucent Cape",
	})
		
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
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Esper Stone +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Atrophy Tights +2",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Carrier's Sash",
		left_ear="Mendi. Earring",
		right_ear="Eabani Earring",
		left_ring="Defending Ring",
		right_ring="Lebeche Ring",
		back="Solemnity Cape",
	}
	
    sets.midcast.CureWeather = set_combine(sets.midcast.Cure, {
		main="Chatoyant Staff",
		sub="Enki Strap",
		ammo="Esper Stone +1",
		head={ name="Gende. Caubeen +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -3%',}},
		body="Malignance Tabard",
		hands={ name="Telchine Gloves", augments={'"Fast Cast"+5','Enh. Mag. eff. dur. +9',}},
		legs="Atrophy Tights +2",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Hachirin-no-Obi",
		left_ear="Thureous Earring",
		right_ear="Eabani Earring",
		left_ring="Defending Ring",
		right_ring="Lebeche Ring",
		back="Solemnity Cape",
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
		ammo="Sapience Orb",
		head=gear.Telchine_Head,
		body="Viti. Tabard +3",
		hands="Atrophy Gloves +2",
		legs=gear.Telchine_Legs,
		feet="Leth. Houseaux +1",
		neck="Dls. Torque +1",
		waist="Embla Sash",
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
		left_ring="Weather. Ring",
		right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		back=gear.RDM_MACC,
	})
	
	-- Enhancing Skill
    sets.midcast.EnhancingSkill = set_combine(sets.midcast['Enhancing Magic'],{
		main="Pukulatmuj +1",
		sub="Ammurapi Shield",
		ammo="Sapience Orb",
		head="Befouled Crown",
		body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
		hands={ name="Viti. Gloves +2", augments={'Enhancing Magic duration',}},
		legs="Atrophy Tights +2",
		feet="Leth. Houseaux +1",
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ear="Andoaa Earring",
		right_ear="Loquac. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Ghostfyre Cape",
	})
	
	sets.midcast.GainStat = set_combine(sets.midcast['Enhancing Magic'], {
		hands={ name="Viti. Gloves +2", augments={'Enhancing Magic duration',}},
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
    sets.midcast.Aquaveil = set_combine(sets.midcast['Enhancing Magic'], {hands="Regal Cuffs"})
	
	-- When casting on another player. (enhancing magic)
    sets.buff.ComposureOther = set_combine(sets.midcast['Enhancing Magic'], {
		head="Leth. Chappel +1",
		body="Lethargy Sayon +1",
		legs="Leth. Fuseau +1",
		feet="Leth. Houseaux +1",
	})	
	
	sets.midcast.Enfeeble = {
		main="Crocea Mors",
		sub="Ammurapi Shield",
		range="Ullr",
		head="Atrophy Chapeau +3",
		body="Atrophy Tabard +3",
		hands="Regal Cuffs",
		legs="Chironic Hose",
		feet="Vitiation Boots +3",
		neck="Dls. Torque +1",
		waist="Luminary Sash",
		left_ear="Regal Earring",
		right_ear="Snotra Earring",
		left_ring="Weather. Ring",
		right_ring="Stikini Ring",
		back=gear.RDM_MACC,
	}
	
	-- Skill Based Enfeebles (Frazzle / Distract)
	sets.midcast.SkillEnfeeble = set_combine(sets.midcast.Enfeeble,{
		main=gear.Enfeebling_Grio,
		sub="Enki Strap",
		ammo="Regal Gem",
		head="Viti. Chapeau +3",
		neck="Incanter's Torque",
		waist="Rumination Sash",
		left_ear="Vor Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
	})

	-- Effect based Enfeebles (Dia)
	sets.midcast.EffectEnfeeble = set_combine(sets.midcast.Enfeeble,{
		ammo="Regal Gem",
		head="Viti. Chapeau +3",
		body="Lethargy Sayon +1",
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

	-- Elemental Magic
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
		waist="Sacro Cord",
		left_ear="Friomisi Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Jhakri Ring",
		back="Izdubar Mantle",
		
	}
	
    sets.midcast['Elemental Magic'].Vagary = set_combine(sets.midcast.Enfeeble, {
		main="Pukulatmuj +1",
		sub="Genmei Shield",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Regal Cuffs",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Dls. Torque +1", augments={'Path: A',}},
		waist="Luminary Sash",
		left_ear="Digni. Earring",
		right_ear="Snotra Earring",
		left_ring="Stikini Ring",
	})
	
	sets.midcast['Elemental Magic'].Vagary2 = set_combine(sets.midcast['Elemental Magic'].Vagary, {
		main="Daybreak",
		sub="Ammurapi Shield",
	})

    sets.midcast.Impact = {
		main="Naegling",
		sub="Ammurapi Shield",
		range="Ullr",
		body="Twilight Cloak",
		hands="Regal Cuffs",
		legs="Chironic Hose",
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		neck={ name="Dls. Torque +1", augments={'Path: A',}},
		waist="Sacro Cord",
		left_ear="Malignance Earring",
		right_ear="Snotra Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back=gear.RDM_MACC,
	}

    sets.midcast.Utsusemi = sets.midcast.SpellInterrupt

    -- Initializes trusts at iLvl 119
    sets.midcast.Trust = sets.precast.FC

	-- sets.idle[idleScope][state.IdleMode][Pet[Engaged]][CustomIdleGroups]

	-- Idle Sets
    sets.idle = {
		head="Viti. Chapeau +3",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Malignance Tights",
		feet="Nyame Sollerets",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Ethereal Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Solemnity Cape",
	}
	
	sets.idle.Refresh = set_combine(sets.idle, {
		--main="Daybreak",
		ammo="Homiliary",
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Jhakri Robe +2",
	})

    sets.idle.Town = set_combine(sets.idle, {legs="Carmine Cuisses +1"})
	
	sets.idle.Field = set_combine(sets.idle,{legs="Carmine Cuisses +1"})
	
	sets.idle.Field.Refresh = set_combine(sets.idle.Field, sets.idle.Refresh)
	
    sets.idle.Weak = set_combine(sets.idle, {})
	
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
	sets.magic_burst = {
		head="Nyame Helm",
		body="Nyame Mail",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Mizu. Kubikazari",
		left_ring="Mujin Band",
		right_ring="Locus Ring",
	}
	
    -- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups

    sets.engaged = {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist="Windbuffet Belt +1",
		left_ear="Sherida Earring",
		right_ear="Dedition Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back=gear.RDM_TP,
	}

    sets.engaged.Acc = set_combine(sets.engaged, {
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
	})
	
	sets.engaged.DualWield = set_combine(sets.engaged, {
		left_ear="Eabani Earring",
		waist="Reiki Yotai",
	})
	
	sets.engaged.DualWield.CroceaMors = set_combine(sets.engaged.DualWield, {
		range="Ullr",
		ammo="Demon Arrow",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Aya. Manopolas +2",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Windbuffet Belt +1",
		left_ear="Suppanomimi",
		right_ear="Digni. Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
	})
	
	sets.engaged.DualWield.SeraphBlade = set_combine(sets.engaged.DualWield, {
		range="Ullr",
		ammo="Demon Arrow",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Aya. Manopolas +2",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Windbuffet Belt +1",
		left_ear="Suppanomimi",
		right_ear="Digni. Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
	})

	
	
	sets.engaged.DualWield.Acc = set_combine(sets.engaged.DualWield, {
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
	})
	
	sets.engaged.EnSpell = {
		range="Ullr",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Aya. Manopolas +2",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Dls. Torque +1", augments={'Path: A',}},
		waist="Sacro Cord",
		left_ear="Cessance Earring",
		right_ear="Sherida Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
		
	--Special and Conditional Sets
    sets.CP = {back="Mecisto. Mantle"}
	sets.Obi = {waist="Hachirin-no-Obi"}
	sets.buff.Saboteur = {hands="Leth. Gantherots +1"}
    sets.TreasureHunter = {body=gear.Chironic_Body_TH,waist="Chaac belt",feet="Volte Boots"}
    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
	
	--Weapon Sets
	sets.weapons.Idle = {main="Daybreak", sub="Genmei Shield"}
	sets.weapons.DualWield.Idle = {main="Daybreak", sub="Genmei Shield"}
	
	sets.weapons.SavageBlade = {main="Naegling", sub="Genmei Shield", range="Ullr", ammo="Demon Arrow"}
	sets.weapons.DualWield.SavageBlade = {main="Naegling", sub="Ternion Dagger +1", range="Ullr", ammo="Demon Arrow"}
	
	sets.weapons.SeraphBlade = {main="Crocea Mors", sub="Genmei Shield", range="Ullr", ammo="Demon Arrow"}
	sets.weapons.DualWield.SeraphBlade = {main="Crocea Mors", sub="Daybreak", range="Ullr", ammo="Demon Arrow"}
	
	sets.weapons.CroceaMors = {main="Crocea Mors", sub="Genmei Shield", range="Ullr", ammo="Demon Arrow"}
	sets.weapons.DualWield.CroceaMors = {main="Crocea Mors", sub="Ternion Dagger +1", range="Ullr", ammo="Demon Arrow"}
	
	sets.weapons.Evisceration = {main="Tauret",sub="Genmei Shield", range="Ullr", ammo="Demon Arrow"}
	sets.weapons.DualWield.Evisceration = {main="Tauret",sub="Ternion Dagger +1", range="Ullr", ammo="Demon Arrow"}
	
	sets.weapons.AeolianEdge = {main="Malevolence",sub="Ammurapi Shield", range="Ullr", ammo="Demon Arrow"}
	sets.weapons.DualWield.AeolianEdge = {main="Malevolence",sub="Ternion Dagger +1", range="Ullr", ammo="Demon Arrow"}
	
	sets.weapons.EnSpell = {main="Trainee Knife", sub="Qutrub Knife", range="Ullr", ammo="Demon Arrow"}
	
end
