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

    sets.precast.FC.Cure = set_combine(sets.precast.FC, {})

    sets.precast.FC.BardSong = set_combine(sets.precast.FC, {main="Kali",head="Fili Calot +1"})

    sets.precast.FC.SongPlaceholder = set_combine(sets.precast.FC.BardSong, {range=info.ExtraSongInstrument})
    
	sets.precast.FC.Ustsusemi = {}
    
    sets.precast.JA.Nightingale = {feet={ name="Bihu Slippers", augments={'Enhances "Nightingale" effect',}}}
    sets.precast.JA.Troubadour = {body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}}}
    sets.precast.JA['Soul Voice'] = {legs={ name="Bihu Cannions", augments={'Enhances "Soul Voice" effect',}}}
 
    sets.precast.WS = {
		range="Linos",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands={ name="Lustr. Mittens +1", augments={'Accuracy+30','VIT+13','DEX+10',}},
		legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
	    neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	}
    
    sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS, {
		left_ring="Hetairoi Ring",
		right_ring="Begrudging Ring",
		back=gear.BRD_CRIT_WS,
	})
        
    sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {
		range={ name="Linos", augments={'Accuracy+14','"Dbl.Atk."+2','Quadruple Attack +3',}},
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands={ name="Lustr. Mittens +1", augments={'Accuracy+30','VIT+13','DEX+10',}},
		legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Petrov Ring",
		right_ring="Ilabrat Ring",
		back="Relucent Cape",
	})

    sets.precast.WS['Mordant Rime'] = set_combine(sets.precast.WS, {
		body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
		neck="Combatant's Torque",
		waist="Grunfeld Rope",
		left_ear="Regal Earring",
		right_ear="Brutal Earring",
		left_ring="Ilabrat Ring",
		right_ring="Begrudging Ring",
		back=gear.BRD_DEX_WS,
	})

    sets.precast.WS['Rudra\'s Storm'] = set_combine(sets.precast.WS, {
		body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
		neck="Combatant's Torque",
		waist="Grunfeld Rope",
		left_ring="Hetairoi Ring",
		left_ring="Ilabrat Ring",
		right_ring="Begrudging Ring",
		back=gear.BRD_DEX_WS,
	})
	
	--set for testing equipment swaps
	sets.rudras = sets.precast.WS['Rudra\'s Storm']
	
	sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
		ammo="Ginsen",
		head="Aya. Zucchetto +2",
		body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
		hands={ name="Lustr. Mittens +1", augments={'Accuracy+30','VIT+13','DEX+10',}},
		legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Rufescent Ring",
		right_ring="Begrudging Ring",
		back=gear.BRD_DEX_WS,
	})
    
    
    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Midcast Sets ------------------------------------------
    ------------------------------------------------------------------------------------------------

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
    sets.midcast['Adventurer\'s Dirge'] = set_combine(sets.SongEnhancing, {})
    sets.midcast['Foe Sirvente'] = set_combine(sets.SongEnhancing, {})
    sets.midcast["Sentinel's Scherzo"] = set_combine(sets.SongEnhancing, {feet="Fili Cothurnes +1"})
    sets.midcast.Mazurka = set_combine(sets.SongEnhancing, {})

    -- For song defbuffs (duration primary, accuracy secondary)
    sets.midcast.SongEnfeeble = {
		main="Tauret",
		sub="Ammurapi Shield",
		head="C. Palug Crown",
		body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
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
    sets.midcast.SongEnfeebleAcc = set_combine(sets.midcast.SongEnfeeble, {main="Tauret",sub="Ammurapi Shield"})

    -- Placeholder song; minimize duration to make it easy to overwrite.
    sets.midcast.SongPlaceholder = {range=info.ExtraSongInstrument}

    -- Curing and White Magic Spells
    sets.midcast.Cure = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Pemphredo Tathlum",
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		body="Inyanga Jubbah +2",
		hands="Brioso Cuffs +3",
		legs="Inyanga Shalwar +2",
		feet="Inyan. Crackows +2",
		neck="Incanter's Torque",
		waist="Luminary Sash",
		left_ear="Regal Earring",
		right_ear="Gifted Earring",
		left_ring="Persis Ring",
		right_ring="Lebeche Ring",
		back="Solemnity Cape",
	}
        
    sets.midcast.Curaga = sets.midcast.Cure
        
    sets.midcast.StatusRemoval = set_combine(sets.midcast.Cure, {
		left_ring="Ephedra Ring",
		right_ring="Ephedra Ring",
	})
        
    sets.midcast.Cursna = set_combine(sets.midcast.StatusRemoval, {
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
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back=gear.BRD_FC_Idle,
	}

        
    -- Defense Sets
    sets.defense.PDT = {
		sub="Genmei Shield",
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
		sub="Genmei Shield",
		head="Inyanga Tiara +2",
		body="Inyanga Jubbah +2",
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Inyan. Crackows +2",
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
		left_ear="Odnowa Earring",
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
		hands="Aya. Manopolas +2",
		legs="Aya. Cosciales +2",
		feet="Aya. Gambieras +2",
		neck="Lissome Necklace",
		waist="Grunfeld Rope",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Ilabrat Ring",
		right_ring="Petrov Ring",
		back=gear.BRD_TP,
	}

    sets.engaged.Acc = set_combine(sets.engaged, {})
	
	-- CombatForm DualWield
	sets.engaged.DualWield = set_combine(sets.engaged,{left_ear="Suppanomimi",waist="Reiki Yotai"})
	sets.engaged.DualWield.Acc = set_combine(sets.engaged.DualWield,{})
	
	sets.engaged.DualWield.DT = set_combine(sets.engaged.DualWield, {    
		neck="Loricate Torque +1",
		right_ring="Defending Ring",
	})
	
	--called in midcast() if combatform is DualWield
	sets.SongDualWieldDuration = {main="Kali",sub="Legato Dagger"}
	
	
	-- Special Sets
    sets.latent_refresh = {waist="Fucho-no-Obi"}
    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
    sets.Obi = {waist="Hachirin-no-Obi"}
    sets.CP = {back="Mecisto. Mantle"}
    sets.TreasureHunter = {waist="Chaac belt", feet="Volte Boots"}
	
	sets.Odin = {
		main="Qutrub Knife",
		sub="Trainee Knife",
		ammo="Pemphredo Tathlum",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Aya. Cosciales +2",
		feet="Aya. Gambieras +2",
		neck="Mnbw. Whistle +1",
		waist="Hachirin-no-Obi",
		left_ear="Hermetic Earring",
		right_ear="Digni. Earring",
		left_ring="Cacoethic Ring +1",
		right_ring="Weather. Ring",
		back="Relucent Cape",
	}
	
	sets.Sword = {main="Naegling",sub="Ternion Dagger +1"}
	sets.Dagger = {main="Tauret",sub="Ternion Dagger +1"}
	

end