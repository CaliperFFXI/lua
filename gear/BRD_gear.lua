function init_gear_sets()

	--place items here to be grabbed when //gs org is run. (requires Organizer)
	organizer_items = {
		echos="Echo Drops",
		curry="Black Curry Bun",
	}
	
    sets.precast.FC = {
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		body="Inyanga Jubbah +2",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Aya. Cosciales +2",
		feet="Inyan. Crackows +2",
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Etiolation Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back=gear.BRD_FC_Idle,
	}

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})
	
	sets.precast.FC['Dispelga'] = set_combine(sets.precast.FC, {main="Daybreak"})

    sets.precast.FC.Cure = set_combine(sets.precast.FC, {})

    sets.precast.FC.BardSong = set_combine(sets.precast.FC, {
		main="Kali",
		sub="Kali",
		head="Fili Calot +1",
		feet="Bihu Slippers +3",
	})

    sets.precast.FC.SongPlaceholder = set_combine(sets.precast.FC.BardSong, {range=info.ExtraSongInstrument})
    
	sets.precast.FC.Ustsusemi = {}
	
    sets.precast.JA['Sublimation'] = {waist="Embla Sash"}
    sets.precast.JA.Nightingale = {feet="Bihu Slippers +3"}
    sets.precast.JA.Troubadour = {body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}}}
    sets.precast.JA['Soul Voice'] = {legs="Bihu Cannions +3"}
 
    sets.precast.WS = {
		range="Linos",
		head="Bihu Roundlet +3",
		body="Ayanmo Corazza +2",
		hands="Lustr. Mittens +1", 
		legs="Lustr. Subligar +1", 
		feet="Bihu Slippers +3",
	    neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	}
    
    sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS, {
		body="Ayanmo Corazza +2",
		feet="Aya. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Hetairoi Ring",
		right_ring="Begrudging Ring",
		back=gear.BRD_CRIT_WS,
	})
        
    sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {
		body="Ayanmo Corazza +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Petrov Ring",
		right_ring="Ilabrat Ring",
		back="Relucent Cape",
	})

    sets.precast.WS['Mordant Rime'] = set_combine(sets.precast.WS, {
		head="Bihu Roundlet +3",
		body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
		hands="Bihu Cuffs +3",
		legs="Bihu Cannions +3",
		feet="Bihu Slippers +3",
		neck="Combatant's Torque",
		waist="Grunfeld Rope",
		left_ear="Regal Earring",
		right_ear="Brutal Earring",
		left_ring="Ilabrat Ring",
		right_ring="Begrudging Ring",
		back=gear.BRD_DEX_WS,
	})

    sets.precast.WS['Rudra\'s Storm'] = set_combine(sets.precast.WS, {
		head="Lustratio Cap +1",
		body="Bihu Jstcorps. +3",
		hands="Lustr. Mittens +1",
		legs="Lustr. Subligar +1",
		feet="Bihu Slippers +3",
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ring="Hetairoi Ring",
		left_ring="Ilabrat Ring",
		right_ring="Begrudging Ring",
		back=gear.BRD_DEX_WS,
	})
	
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS, {
		ammo="Pemphredo Tathlum",
		head="C. Palug Crown",
		body={ name="Chironic Doublet", augments={'Pet: INT+1','Pet: Phys. dmg. taken -2%','"Treasure Hunter"+1','Accuracy+16 Attack+16',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Lengo Pants", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Refresh"+1',}},
		feet={ name="Chironic Slippers", augments={'Accuracy+18 Attack+18','"Dbl.Atk."+2','MND+7','Accuracy+8','Attack+7',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Regal Earring",
		right_ear="Friomisi Earring",
		left_ring="Arvina Ringlet +1",
		right_ring="Ilabrat Ring",
		back=BRD_DEX_WS,
	})
	
	--set for testing equipment swaps
	sets.rudras = sets.precast.WS['Rudra\'s Storm']
	
	sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
		ammo="Ginsen",
		body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Ilabrat Ring",
		right_ring="Rufescent Ring",
		back=gear.BRD_DEX_WS,
	})
    
   
    sets.ConserveMP = {
		ammo="Pemphredo Tathlum",
		head="Vanya Hood", 
		neck="Incanter's Torque",
		left_ear="Mendi. Earring",
		right_ear="Gifted Earring",
		back="Fi Follet Cape +1",
		waist="Luminary Sash",
    }
	
	sets.SongEnhancing = {
	    main="Kali",
		head="Fili Calot +1",
		body="Fili Hongreline +1",
		hands="Fili Manchettes +1",
		legs="Inyanga Shalwar +2",
		feet="Brioso Slippers +2",
		neck="Moonbow Whistle +1",
	}
	        
    -- Gear to enhance certain classes of songs.
    sets.midcast.Ballad = set_combine(sets.SongEnhancing, {legs="Fili Rhingrave +1"})
    sets.midcast.Carol = set_combine(sets.SongEnhancing, {hands="Mousai Gages",legs="Fili Rhingrave +1"})
    sets.midcast.Etude = set_combine(sets.SongEnhancing, {head="Mousai Turban"})
    sets.midcast.Lullaby = set_combine(sets.SongEnhancing, {hands="Brioso Cuffs +3"})
    sets.midcast.Madrigal = set_combine(sets.SongEnhancing, {})
    sets.midcast.Mambo = set_combine(sets.SongEnhancing, {})
    sets.midcast['Honor March'] = set_combine(sets.SongEnhancing, {})
    sets.midcast.March = set_combine(sets.SongEnhancing, {})
    sets.midcast.Minne = set_combine(sets.SongEnhancing, {})
    sets.midcast.Minuet = set_combine(sets.SongEnhancing, {body="Fili Hongreline +1",})
    sets.midcast.Paeon = set_combine(sets.SongEnhancing, {})
    sets.midcast["Adventurer's Dirge"] = set_combine(sets.SongEnhancing, {})
    sets.midcast['Foe Sirvente'] = set_combine(sets.SongEnhancing, {})
    sets.midcast["Sentinel's Scherzo"] = set_combine(sets.SongEnhancing, {feet="Fili Cothurnes +1"})
    sets.midcast.Mazurka = set_combine(sets.SongEnhancing, {})
    sets.midcast.Prelude = set_combine(sets.SongEnhancing, {})
	sets.midcast["Goddess's Hymnus"] = set_combine(sets.SongEnhancing, {})

    -- For song defbuffs (duration primary, accuracy secondary)
    sets.midcast.SongEnfeeble = {
		main="Tauret",
		sub="Ammurapi Shield",
		head="Bihu Roundlet +3",
		body="Bihu Jstcorps. +3", 
		hands="Brioso Cuffs +3",
		legs="Inyanga Shalwar +2",
		feet="Brioso Slippers +2",
		neck="Moonbow Whistle +1",
		waist="Luminary Sash",
		left_ear="Digni. Earring",
		right_ear="Regal Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back=gear.BRD_FC_Idle,
	}
		
    -- For song defbuffs (accuracy primary, duration secondary)
    sets.midcast.SongEnfeebleAcc = set_combine(sets.midcast.SongEnfeeble, {})

    -- Placeholder song; minimize duration to make it easy to overwrite.
    sets.midcast.SongPlaceholder = {range=info.ExtraSongInstrument}

    -- Curing and White Magic Spells
    sets.midcast.Cure = {
		main="Chatoyant Staff",
		sub="Mensch Strap +1",
		ammo="Pemphredo Tathlum",
		head={ name="Gende. Caubeen +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -3%',}},
		body={ name="Gende. Bilaut +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Song spellcasting time -4%',}},
		hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','Song spellcasting time -3%',}},
		legs={ name="Gende. Spats +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','Song recast delay -3',}},
		feet={ name="Gende. Galosh. +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','"Cure" potency +2%',}},
		neck="Nodens Gorget",
		waist="Luminary Sash",
		left_ear="Odnowa Earring +1",
		right_ear="Mendi. Earring",
		left_ring="Gelatinous Ring +1",
		right_ring="Lebeche Ring",
		back="Solemnity Cape",
	}
        
    sets.midcast.Curaga = sets.midcast.Cure
	
	-- Cure with Weather
	sets.midcast.CureWeather = set_combine(sets.midcast.Cure,{
		waist="Hachirin-no-Obi"
	})
	
	-- Curaga with Weather
	sets.midcast.CuragaWeather = set_combine(sets.midcast.CureWeather,{})
        
    sets.midcast.StatusRemoval = set_combine(sets.midcast.Cure, {
		left_ring="Ephedra Ring",
		right_ring="Ephedra Ring",
	})
        
    sets.midcast.Cursna = set_combine(sets.midcast.StatusRemoval, {
		hands="Inyan. Dastanas +2",
		feet="Gende. Galosh. +1",
		neck="Malison Medallion",
	})
    
    sets.midcast['Enhancing Magic'] = {
		sub="Ammurapi Shield",
		head=gear.Telchine_Head,
		body=gear.Telchine_Body,
		hands=gear.Telchine_Hands,
		legs=gear.Telchine_Legs,
		feet=gear.Telchine_Feet,
		waist="Embla Sash",
	}

    sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'], {right_ring="Sheltered Ring"})
    sets.midcast.Protectra = sets.midcast.Protect
    sets.midcast.Shell = sets.midcast.Protect
    sets.midcast.Shellra = sets.midcast.Shell
	sets.midcast.Haste = set_combine(sets.midcast['Enhancing Magic'], {})
	
	sets.midcast.Enfeeble = {
	    main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="C. Palug Crown",
		body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
		hands={ name="Bihu Cuffs +3", augments={'Enhances "Con Brio" effect',}},
		legs={ name="Bihu Cannions +3", augments={'Enhances "Soul Voice" effect',}},
		feet={ name="Bihu Slippers +3", augments={'Enhances "Nightingale" effect',}},
		neck="Mnbw. Whistle +1",
		waist="Luminary Sash",
		left_ear="Digni. Earring",
		right_ear="Regal Earring",
		left_ring="Kishar Ring",
		right_ring="Stikini Ring",
		back=gear.BRD_FC_Idle,
	}
	
	sets.midcast['Dark Magic'] = {}
	sets.midcast.Aspir = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
		hands={ name="Bihu Cuffs +3", augments={'Enhances "Con Brio" effect',}},
		legs={ name="Bihu Cannions +3", augments={'Enhances "Soul Voice" effect',}},
		feet={ name="Bihu Slippers +3", augments={'Enhances "Nightingale" effect',}},
		neck="Incanter's Torque",
		waist="Fucho-no-Obi",
		left_ear="Digni. Earring",
		right_ear="Regal Earring",
		left_ring="Archon Ring",
		right_ring="Evanescence Ring",
		back="Aurist's Cape +1",
	}
	sets.midcast.Drain = set_combine(sets.midcast.Aspir, {})

	-- idle sets
    sets.idle = {
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Inyanga Shalwar +2",
		feet="Fili Cothurnes +1",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Ethereal Earring",
		right_ear="Genmei Earring",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring",
		back=gear.BRD_FC_Idle,
	}

        
    -- Defense Sets
    sets.defense.PDT = {
		head={ name="Gende. Caubeen +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -3%',}},
		body={ name="Gende. Bilaut +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Song spellcasting time -4%',}},
		hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','Song spellcasting time -3%',}},
		legs="Inyanga Shalwar +2",
		feet="Inyan. Crackows +2",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back=gear.BRD_FC_Idle,
	}
	
    sets.defense.MDT = {
		main="Daybreak",
		sub="Genmei Shield",
		head="Inyanga Tiara +2",
		body="Inyanga Jubbah +2",
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Inyan. Crackows +2",
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Reiki Cloak",
	}

    sets.Kiting = {feet="Fili Cothurnes +1"}
    
	sets.idle.Town = set_combine(sets.idle, sets.Kiting, {})

    -- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups
    
    sets.engaged = {
		range="Linos",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Chironic Gloves",
		legs="Aya. Cosciales +2",
		feet="Chironic Slippers",
		neck="Ainia Collar",
		waist="Reiki Yotai",
		left_ear="Suppanomimi",
		right_ear="Dedition Earring",
		left_ring="Ilabrat Ring",
		right_ring="Petrov Ring",
		back=gear.BRD_TP,
	}

    sets.engaged.Acc = set_combine(sets.engaged, {
		neck="Lissome Necklace",
		right_ear="Telos Earring",
	})
	
	-- CombatForm DualWield
	sets.engaged.DualWield = set_combine(sets.engaged,{left_ear="Suppanomimi",waist="Reiki Yotai"})
	sets.engaged.DualWield.Acc = set_combine(sets.engaged.DualWield,{
		neck="Lissome Necklace",
		right_ear="Telos Earring",
	})
	
	sets.engaged.DualWield.DT = set_combine(sets.engaged.DualWield, {    
		neck="Loricate Torque +1",
		right_ring="Defending Ring",
	})
	
	sets.engaged.DualWield.Acc.DT = set_combine(sets.engaged.DualWield.DT, {})
	
	--called in midcast() if combatform is DualWield
	sets.SongDualWieldDuration = {main="Kali",sub="Kali"}
	
	-- Special Sets
    sets.latent_refresh = {waist="Fucho-no-Obi"}
    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
    sets.Obi = {waist="Hachirin-no-Obi"}
    sets.CP = {back="Mecisto. Mantle"}
    sets.TreasureHunter = {body=gear.Chironic_Body_TH,waist="Chaac belt", feet="Volte Boots"}
	
	sets.Sword = {main="Naegling",sub="Ternion Dagger +1"}
	sets.Dagger = {main="Aeneas",sub="Ternion Dagger +1"}
	sets.DaggerMAB = {main="Aeneas",sub="Malevolence"}
	sets.Shield = {sub="Genmei Shield"}

	
end