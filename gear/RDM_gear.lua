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

    sets.precast.WS['Sanguine Blade'] = {}
		
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
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
		hands={ name="Telchine Gloves", augments={'"Fast Cast"+5','Enh. Mag. eff. dur. +9',}},
		legs="Atrophy Tights +2",
		feet={ name="Medium's Sabots", augments={'MP+25','"Conserve MP"+5',}},
		neck="Incanter's Torque",
		waist="Luminary Sash",
		left_ear="Mendi. Earring",
		right_ear="Gifted Earring",
		left_ring="Persis Ring",
		right_ring="Lebeche Ring",
		back="Solemnity Cape",
	}

    sets.midcast.CureWeather = set_combine(sets.midcast.Cure, {waist="Hachirin-no-Obi"})
    sets.midcast.CureSelf = set_combine(sets.midcast.Cure, {})
    sets.midcast.Curaga = set_combine(sets.midcast.Cure, {})

    sets.midcast.StatusRemoval = set_combine(sets.ConserveMP,{
		sub="Sors Shield",
		left_ring="Ephedra Ring",
		right_ring="Ephedra Ring",
	})

    sets.midcast.Cursna = set_combine(sets.midcast.StatusRemoval, {
		feet="Gende. Galosh. +1",
		neck="Malison Medallion",
		left_ring="Ephedra Ring",
		right_ring="Ephedra Ring",
	})

	-- Enhancing Magic
	
	sets.midcast['Enhancing Magic'] = set_combine(sets.ConserveMP,{
		head="Befouled Crown",
		body=gear.Telchine_Body,
		hands="Chironic Gloves",
		legs="Carmine Cuisses +1",
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ear="Andoaa Earring",
		back="Fi Follet Cape +1",
	})
	
    sets.midcast.EnhancingDuration = set_combine(sets.ConserveMP,{
	    sub="Ammurapi Shield",
		head=gear.Telchine_Head,
		body=gear.Telchine_Body,
		hands="Atrophy Gloves +2",
		legs=gear.Telchine_Legs,
		feet="Leth. Houseaux +1",
		waist="Embla Sash",
		back=gear.FC_MACC_Cape,
	})

   
    sets.midcast.GainSpell = set_combine(sets.midcast.EnhancingDuration,sets.midcast['Enhancing Magic'],{})
    sets.midcast.RefreshSelf = set_combine(sets.midcast.EnhancingDuration, {legs="Leth. Fuseau +1",})
    sets.midcast.Stoneskin = set_combine(sets.midcast.EnhancingDuration, {})
    
	sets.midcast.Phalanx = set_combine(sets.midcast.EnhancingDuration, {
		body=gear.Taeon_Body,
		hands=gear.Taeon_Hands,
		legs=gear.Taeon_Legs,
		feet=gear.Taeon_Feet,
	})
    
	sets.midcast.Aquaveil = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.Protect = set_combine(sets.midcast.EnhancingDuration, {left_ring="Sheltered Ring"})
    sets.midcast.Shell = sets.midcast.Protect
	
	-- Job-specific buff sets
    sets.buff.ComposureOther = set_combine(sets.midcast.EnhancingDuration, {
		head="Leth. Chappel +1",
		legs="Leth. Fuseau +1",
		feet="Leth. Houseaux +1",
	})
	
    sets.buff.Saboteur = {}

	-- Enfeebling Magic
    -- Custom spell classes
    sets.midcast.MndEnfeebles = {
		main="Naegling",
		sub="Ammurapi Shield",
		range="Kaja Bow",
		head="C. Palug Crown",
		body="Atrophy Tabard +2",
		hands="Regal Cuffs",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Enmity-2','Mag. Acc.+15','"Mag.Atk.Bns."+4',}},
		feet="Aya. Gambieras +2",
		neck="Erra Pendant",
		waist="Luminary Sash",
		left_ear="Digni. Earring",
		right_ear="Malignance Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back=gear.FC_MACC_Cape,
	}

    sets.midcast.MndEnfeeblesAcc = set_combine(sets.midcast.MndEnfeebles, {})
    sets.midcast.IntEnfeebles = set_combine(sets.midcast.MndEnfeebles, {})
    sets.midcast.IntEnfeeblesAcc = set_combine(sets.midcast.IntEnfeebles, {})

    sets.midcast.SkillEnfeebles = set_combine(sets.midcast.MndEnfeebles, {
		head="Befouled Crown",
		feet="Skaoi Boots",
		neck="Incanter's Torque",
	})

    sets.midcast.EffectEnfeebles = {ammo="Regal Gem"}

    sets.midcast.ElementalEnfeeble = sets.midcast.IntEnfeebles

    sets.midcast['Dia III'] = set_combine(sets.midcast.MndEnfeebles, sets.midcast.EffectEnfeebles, {})
    sets.midcast['Paralyze II'] = set_combine(sets.midcast.MndEnfeebles, sets.midcast.EffectEnfeebles, {})
    sets.midcast['Slow II'] = set_combine(sets.midcast.MndEnfeebles, sets.midcast.EffectEnfeebles, {})

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

    sets.midcast.Drain = set_combine(sets.midcast['Dark Magic'], {waist="Fucho-no-Obi"})
    sets.midcast.Aspir = sets.midcast.Drain
    sets.midcast.Stun = sets.midcast.MndEnfeebles

--Need to revise this set, research Stun Requirements in terms of skill, etc

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
		back="Aurist's Cape +1", -- Likely need an Ambuscade Cape or genereic MAB cape
	}

	-- Elemental Magic

    sets.midcast['Elemental Magic'].Seidr = set_combine(sets.midcast['Elemental Magic'], {})

    sets.midcast['Elemental Magic'].Resistant = set_combine(sets.midcast['Elemental Magic'], {})

    sets.midcast.Impact = set_combine(sets.midcast['Elemental Magic'], {})

    sets.midcast.Utsusemi = sets.midcast.SpellInterrupt

    -- Initializes trusts at iLvl 119
    sets.midcast.Trust = sets.precast.FC

	-- Idle Sets
    sets.idle = {
		head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Jhakri Robe +2",
		hands="Aya. Manopolas +2",
		legs={ name="Lengo Pants", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Refresh"+1',}},
		feet={ name="Chironic Slippers", augments={'"Dbl.Atk."+2','INT+9','"Refresh"+1',}},
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Solemnity Cape",
	}

    sets.idle.Town = set_combine(sets.idle, {legs="Carmine Cuisses +1"})
	
	sets.idle.Town.Synergy = set_combine(sets.idle.Town, {hands="Fisherman's cuffs"})
	
	sets.idle.Town.Craft = set_combine(sets.Craft, {})
		
	sets.idle.Fish = set_combine(sets.Fish, {})
	
	sets.idle.Town.Fish = set_combine(sets.Fish, {})

    sets.idle.Weak = set_combine(sets.idle, {})
	
	sets.idle.Refresh = set_combine(sets.idle, {hands="Chironic Gloves",})
	
	
    sets.resting = set_combine(sets.idle, {})

    -- Defense Sets

    sets.defense.PDT = {}
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
		range="Kaja Bow",
		ammo="Demon Arrow",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Aya. Manopolas +2",
		legs="Malignance Tights",
		feet="Aya. Gambieras +2",
		neck="Anu Torque",
		waist="Windbuffet Belt +1",
		left_ear="Sherida Earring",
		right_ear="Ethereal Earring",
		left_ring="Hetairoi Ring",
		right_ring="Ilabrat Ring",
		back="Relucent Cape",
	}

    sets.engaged.Acc = set_combine(sets.engaged, {})
	
	sets.engaged.DualWield = set_combine(sets.engaged, {waist="Reiki Yotai",right_ear="Suppanomimi"})
	sets.engaged.DualWield.Acc = set_combine(sets.engaged.DualWield, {})
	
    sets.engaged.Hybrid = {}

    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}

    sets.Obi = {waist="Hachirin-no-Obi"}
    sets.CP = {back="Mecisto. Mantle"}

end
