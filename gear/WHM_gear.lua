function init_gear_sets()

	organizer_items = {
		echos="Echo Drops",
	}
	
	-- Precast
	sets.precast.JA['Benediction'] = {body="Piety Briault +3"}
	sets.precast.JA['Sublimation'] = {waist="Embla Sash"}

	-- Fast Cast 
    sets.precast.FC = { 
		main="C. Palug Hammer",
		ammo="Sapience Orb",
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		body="Inyanga Jubbah +2",
		hands={ name="Telchine Gloves", augments={'"Fast Cast"+5',}},
		legs="Aya. Cosciales +2",
		feet="Regal Pumps +1",
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Malignance Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
	}

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {})
	
	--Fast Cast + Cure spell casting time stack additively, cap 80%
    sets.precast.FC['Healing Magic'] = set_combine(sets.precast.FC, {sub="Sors Shield",})
	sets.precast.FC.StatusRemoval = sets.precast.FC['Healing Magic']
    sets.precast.FC.Cure = set_combine(sets.precast.FC['Healing Magic'], {})
    sets.precast.FC.Curaga = sets.precast.FC.Cure
    sets.precast.FC.CureSolace = sets.precast.FC.Cure
    sets.precast.FC.Impact = set_combine(sets.precast.FC, {})

    -- Weaponskill 
    sets.precast.WS = {
		ammo="Pemphredo Tathlum",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Aya. Cosciales +2",
		feet="Aya. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Ilabrat Ring",
		right_ring="Rufescent Ring",
		back="Relucent Cape",
	}

	sets.precast.WS['Black Halo'] = set_combine(sets.precast.WS, {
	    neck="Combatant's Torque",
		waist="Grunfeld Rope",
	})
	sets.precast.WS['Hexa Strike'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Flash Nova'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Mystic Boon'] = set_combine(sets.precast.WS, {})

    -- Midcast 
   
    sets.ConserveMP = {
		ammo="Pemphredo Tathlum",
		head="Vanya Hood", 
		hands="Fanatic Gloves",
		neck="Incanter's Torque",
		left_ear="Mendi. Earring",
		right_ear="Gifted Earring",
		back="Fi Follet Cape +1",
		waist="Luminary Sash",
        }
		
    -- Curing and Healing 
    sets.midcast.CureSolace = {
		main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
		sub="Sors Shield",
		ammo="Esper Stone +1",
		head="Theophany Cap +2",
		body="Ebers Bliaud +1",
		hands="Theophany Mitts +2",
		legs="Ebers Pant. +1",
		feet="Piety Duckbills +1",		
		neck="Cleric's Torque",
		waist="Luminary Sash",
		left_ear="Nourish. Earring +1",
		right_ear="Glorious Earring",
		right_ring="Lebeche Ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
        }

    sets.midcast.CureSolaceWeather = set_combine(sets.midcast.CureSolace, {waist="Hachirin-no-Obi"})

    sets.midcast.CureNormal = set_combine(sets.midcast.CureSolace, {    
		body={ name="Piety Briault +3", augments={'Enhances "Benediction" effect',}},
	})

    sets.midcast.CureWeather = set_combine(sets.midcast.CureNormal, {
		main="Chatoyant Staff",
		sub="Mensch Strap +1",
		waist="Hachirin-no-Obi",
	})

    sets.midcast.CuragaNormal = {
		main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
		sub="Sors Shield",
		ammo="Pemphredo Tathlum",
		head="Theophany Cap +2",
		body="Theo. Briault +2",
		hands="Theophany Mitts +2",
		legs="Th. Pantaloons +2",
		feet="Piety Duckbills +1",
		neck="Cleric's Torque",
		waist="Luminary Sash",
		left_ear="Nourish. Earring +1",
		right_ear="Glorious Earring",
		right_ring="Lebeche Ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
	}

    sets.midcast.CuragaWeather = set_combine(sets.midcast.CuragaNormal, {
		main="Chatoyant Staff",
		sub="Enki Strap",
		waist="Hachirin-no-Obi",
		back="Twilight Cape",
	})
	
    sets.midcast.CureMelee = sets.midcast.CureSolace

    sets.midcast.StatusRemoval = set_combine(sets.ConserveMP, {
		main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
		ammo="Sapience Orb",
		head="Ebers Cap +1",
		body="Inyanga Jubbah +2",
		hands="Ebers Mitts +1",
		legs="Ebers Pant. +1",
		feet={ name="Piety Duckbills +1", augments={'Enhances "Afflatus Solace" effect',}},
		neck="Incanter's Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Malignance Earring",
		left_ring="Ephedra Ring",
		right_ring="Ephedra Ring",
		back=gear.JSE_Cape,
    })

    sets.midcast.Cursna = set_combine(sets.midcast.StatusRemoval, {
		main="Queller Rod",
		hands="Fanatic Gloves",
		legs="Th. Pantaloons +2",
		feet="Gende. Galosh. +1",
		neck="Malison Medallion",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Malignance Earring",
		left_ring="Ephedra Ring",
		right_ring="Ephedra Ring",
		back="Alaunus's Cape",
    })
	
	sets.midcast.Arise = sets.precast.FC
	sets.midcast.Raise = sets.precast.FC

    sets.midcast.Erase = set_combine(sets.midcast.StatusRemoval, {neck="Cleric's Torque"})

    -- Enhancing 
	sets.midcast['Enhancing Magic'] = set_combine(sets.midcast.EnhancingDuration, {
		head="Befouled Crown",
		hands="Inyan. Dastanas +2",
		legs="Piety Pantaln. +1",
		feet="Ebers Duckbills +1",
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ear="Andoaa Earring",
		right_ear="Gifted Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Fi Follet Cape +1",
    })

    sets.midcast.EnhancingDuration =  set_combine(sets.ConserveMP, {
		main="Gada",
	    sub="Ammurapi Shield",
		head=gear.Telchine_Head,
		body=gear.Telchine_Body,
		hands=gear.Telchine_Hands,
		legs=gear.Telchine_Legs,
		feet=gear.Telchine_Feet,
		waist="Embla Sash",
    })

    sets.midcast.Regen = set_combine(sets.midcast.EnhancingDuration, {
		main="Bolelabunga",
		head="Inyanga Tiara +2",
		body={ name="Piety Briault +3", augments={'Enhances "Benediction" effect',}},
		hands="Ebers Mitts +1",
		legs="Th. Pantaloons +2",
		back="Fi Follet Cape +1",
    })
	
	sets.midcast.Haste = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.Refresh = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.Stoneskin = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.Aquaveil = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.BoostStat = set_combine(sets.midcast.EnhancingDuration, {
		feet="Theo. Duckbills +2",
		neck="Incanter's Torque",
		left_ear="Andoaa Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
	})

    sets.midcast.Auspice = set_combine(sets.midcast.EnhancingDuration, {
		feet="Ebers Duckbills +1",
        })

    sets.midcast.BarElement = set_combine(sets.midcast['Enhancing Magic'], {
		sub="Ammurapi shield",
		head="Ebers Cap +1",
		body="Ebers Bliaud +1",
		hands="Ebers Mitts +1",
		legs="Piety Pantaln. +1",
		feet="Ebers Duckbills +1",
		neck="Incanter's Torque",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
        })
	
    sets.midcast.Protect = set_combine(sets.ConserveMP, sets.midcast.EnhancingDuration, {left_ring="Sheltered Ring"})
    sets.midcast.Protectra = set_combine(sets.ConserveMP, sets.midcast.EnhancingDuration, {left_ring="Sheltered Ring"})
    sets.midcast.Shell = set_combine(sets.ConserveMP, sets.midcast.EnhancingDuration, {left_ring="Sheltered Ring"})
    sets.midcast.Shellra = set_combine(sets.ConserveMP, sets.midcast.EnhancingDuration, {left_ring="Sheltered Ring"})
	sets.midcast.Storm = set_combine(sets.ConserveMP, sets.midcast.EnhancingDuration, {})
	
	
	-- Divine and Dark Magic
    sets.midcast['Divine Magic'] = {}

    sets.midcast.Banish = set_combine(sets.midcast['Divine Magic'], {})

    sets.midcast.Holy = sets.midcast.Banish

    sets.midcast['Dark Magic'] = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body="Theo. Briault +2",
		hands="Theophany Mitts +2",
		legs="Th. Pantaloons +2",
		feet="Theo. Duckbills +2",
		neck="Erra Pendant",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Regal Earring",
		left_ring="Archon Ring",
		right_ring="Evanescence Ring",
		back="Aurist's Cape +1",
	}

    -- Enfeebling
    sets.midcast['Enfeebling Magic'] = {
		main="Daybreak",
		sub="Ammurapi shield",
		ammo="Pemphredo Tathlum",
		head="Theophany Cap +2",
		body="Theo. Briault +2",
		hands="Regal Cuffs",
		legs="Chironic Hose",
		feet="Theo. Duckbills +2",
		neck="Erra Pendant",
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back="Aurist's Cape +1",
	}

	--Repose Specific
    sets.midcast.Repose = set_combine(sets.midcast['Enfeebling Magic'], sets.midcast['Divine Magic'])

    sets.midcast.Impact = {}

    -- Initializes trusts at iLvl 119
    sets.midcast.Trust = sets.precast.FC

    -- Resting sets
    sets.resting = {}

	-- Idle sets
    sets.idle = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Homiliary",
		head="Inyanga Tiara +2",
		body={ name="Piety Briault +3", augments={'Enhances "Benediction" effect',}},
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Inyan. Crackows +2",
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
		left_ear="Genmei Earring",
		right_ear="Ethereal Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back=gear.JSE_Cape,
	}
		
	-- Defense sets
    sets.defense.PDT = {    
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Homiliary",
		head={ name="Gende. Caubeen +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -3%',}},
		body={ name="Gende. Bilaut +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Song spellcasting time -4%',}},
		hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','Song spellcasting time -3%',}},
		legs="Inyanga Shalwar +2",
		feet="Inyan. Crackows +2",
		neck="Loricate Torque +1",
		waist="Carrier's Sash",
		left_ear="Genmei Earring",
		right_ear="Ethereal Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back=gear.JSE_Cape,
	}
	
    sets.defense.MDT = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Staunch Tathlum",
		head="Inyanga Tiara +2",
		body="Inyanga Jubbah +2",
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Inyan. Crackows +2",
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
		left_ear="Eabani Earring",
		right_ear="Ethereal Earring",
		left_ring="Defending Ring",
		right_ring="Shadow Ring",
		back=gear.JSE_Cape,
	}	
	
	sets.idle.PDT = set_combine(sets.idle, sets.defense.PDT)
	sets.idle.MDT = set_combine(sets.idle, sets.defense.MDT)

    sets.idle.Town = set_combine(sets.idle, {feet="Herald's Gaiters"})
    sets.idle.Weak = sets.idle.DT

    sets.Kiting = {feet="Herald's Gaiters"}
    sets.latent_refresh = {waist="Fucho-no-Obi"}

    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion

    -- Basic set for if no TP weapon is defined.
    sets.engaged = {
		main="C. Palug Hammer",
		sub="Genmei Shield",
		ammo="Amar Cluster",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Aya. Cosciales +2",
		feet="Aya. Gambieras +2",
		neck="Combatant's Torque",
		waist="Grunfeld Rope",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Ilabrat Ring",
		right_ring="Petrov Ring",
		back="Relucent Cape",
	}

    -- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
    sets.buff['Divine Caress'] = {hands="Ebers Mitts +1",back="Mending Cape"}
    sets.buff['Devotion'] = {}

    sets.buff.Doom = set_combine(sets.midcast.Cursna,{waist="Gishdubar Sash",right_ring="Purity Ring"})

    sets.Obi = {waist="Hachirin-no-Obi"}
    sets.CP = {back="Mecisto. Mantle"}

end
