function init_gear_sets()

	--place items here to be grabbed when //gs org is run. (requires Organizer)
	organizer_items = {
		Keys="Forbidden Key",
	}
	
	sets.Enmity = {
		head="Halitus Helm",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		legs="Obatala Subligar",
		feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','"Triple Atk."+2','Attack+14',}},
		neck="Unmoving Collar +1",
		waist="Sulla Belt",
		left_ear="Cryptic Earring",
		right_ear="Friomisi Earring",
		left_ring="Eihwaz Ring",
		right_ring="Begrudging Ring",
		back="Reiki Cloak",
	}

    sets.precast.JA['Provoke'] = sets.Enmity
    sets.precast.JA['Warcry'] = sets.Enmity
    sets.precast.JA['Mijin Gakure'] = {}
    sets.precast.JA['Futae'] = {}
    sets.precast.JA['Sange'] = {}

    sets.precast.Waltz = {}
    sets.precast.Waltz['Healing Waltz'] = {}

    sets.precast.FC = {
		ammo="Sapience Orb",
		head="Herculean Helm",
		body={ name="Taeon Tabard", augments={'"Fast Cast"+3',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		feet={ name="Taeon Boots", augments={'"Fast Cast"+5',}},
		neck="Voltsurge Torque",
		waist="Eschan Stone",
		left_ear="Loquac. Earring",
		right_ear="Etiolation Earring",
		left_ring="Weather. Ring",
		right_ring="Lebeche Ring",
    }

    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {body="Passion Jacket"})

    sets.precast.RA = {}

    sets.precast.WS = {
	    head="Mummu Bonnet +2",
		body="Mummu Jacket +2",
		hands="Mummu Wrists +2",
		legs="Mummu Kecks +2",
		feet="Mummu Gamash. +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		back="Sacro Mantle",
	}

    sets.precast.WS.Acc = set_combine(sets.precast.WS, {})
		
	sets.precast.WS['Blade: Ku'] = set_combine(sets.precast.WS, {})
	
	sets.precast.WS['Blade: Jin'] = set_combine(sets.precast.WS, {
		ammo="C. Palug Stone",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		left_ear="Mache Earring +1",
		right_ear="Telos Earring",
		left_ring="Mummu Ring",
	})

    sets.precast.WS['Blade: Hi'] = set_combine(sets.precast.WS, {
		ammo="C. Palug Stone",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		neck="Caro Necklace",
		waist="Grunfeld rope",
		left_ear="Telos Earring",
		right_ear="Mache Earring +1",
		left_ring="Ilabrat Ring",
		right_ring="Regal Ring",
	})
	
	sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS, {
		ammo="C. Palug Stone",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Abnoba Kaftan",
		hands="Mummu Wrists +2",
		legs="Mummu Kecks +2",
		feet="Mummu Gamash. +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear="Odr Earring",
		left_ring="Gere Ring",
		right_ring="Begrudging Ring",
		back="Sacro Mantle",
	})

    sets.precast.WS['Blade: Ten'] = set_combine(sets.precast.WS, {
		ammo="Amar Cluster",
		head="Hiza. Somen　+2",
		body="Hiza. Haramaki +2",
		hands={ name="Herculean Gloves", augments={'Weapon Skill Acc.+4','STR+5','Weapon skill damage +7%','Accuracy+7 Attack+7','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},
		legs="Hiza. Hizayoroi +2",
		feet="Hiza. Sune-Ate +2",
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Gere Ring",
	})

    sets.precast.WS['Blade: Ten'].Acc = set_combine(sets.precast.WS['Blade: Ten'], {})

	--Stat Mod: DEX73~85
    sets.precast.WS['Blade: Shun'] = set_combine(sets.precast.WS, {})

    sets.precast.WS['Blade: Kamu'] = set_combine(sets.precast.WS, {})

    sets.precast.WS['Blade: Yu'] = set_combine(sets.precast.WS, {
		ammo="Pemphredo Tathlum",
		head=gear.Herculean_Head_MAB,
		body=gear.Herculean_Body_TH,
		hands=gear.Herculean_Hands_WSD,
		legs=gear.Herculean_Legs_MAB,
		feet=gear.Herculean_Feet_MAB,
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Arvina Ringlet +1",
		right_ring="Dingir Ring",
	})
	
	
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS['Blade: Yu'], {})
	sets.precast.WS['Blade: Chi'] = set_combine(sets.precast.WS['Blade: Yu'], {})
	sets.precast.WS['Blade: Ei'] = set_combine(sets.precast.WS['Blade: Yu'], {})
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS['Blade: Yu'], {})
	
    sets.LugraLeft = {}
    sets.LugraRight = {right_ear="Lugra Earring +1"}

    --------------------------------------
    -- Midcast sets
    --------------------------------------

    sets.midcast.FastRecast = sets.precast.FC

    sets.midcast.SpellInterrupt = {}

    -- Specific spells
    sets.midcast.Utsusemi = set_combine(sets.midcast.SpellInterrupt, {back=gear.DEXcape,})

    sets.midcast.ElementalNinjutsu = {}

    sets.midcast.ElementalNinjutsu.Resistant = set_combine(sets.midcast.Ninjutsu, {})

    sets.midcast.EnfeeblingNinjutsu = {}

    sets.midcast.EnhancingNinjutsu = {neck="Incanter's Torque"}

	--Ranged Accuracy and Attack 
    sets.midcast.RA = {}

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------

    -- Resting sets
    sets.resting = {}

    -- Idle sets
    sets.idle = {
		ammo="Staunch Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Purity Ring",
		back="Reiki Cloak",
	}

    sets.idle.DT = set_combine(sets.idle, {})
	
	sets.idle.Eva = set_combine(sets.idle, {})

    sets.idle.Town = set_combine(sets.idle, {})

    sets.idle.Weak = sets.idle.DT

    -- Defense sets
    sets.defense.PDT = sets.idle.DT
    sets.defense.MDT = sets.idle.DT
	
	sets.defense.Eva = {}

    sets.Kiting = {feet="Danzo sune-ate"}
    sets.DayMovement = {feet="Danzo sune-ate"}
    sets.NightMovement = {feet="Hachiya Kyahan +2"}

    --------------------------------------
    -- Engaged sets
    --------------------------------------

    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Eva

    sets.engaged = {
		ammo="Ginsen",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands="Adhemar Wrist. +1",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','"Triple Atk."+2','Attack+14',}},
		neck="Iskur Gorget",
		waist="Windbuffet Belt +1",
		left_ear="Telos Earring",
		right_ear="Dedition Earring",
		left_ring="Epona's Ring",
		right_ring="Gere Ring",
		back="Sacro Mantle",
	} 

    sets.engaged.LowAcc = set_combine(sets.engaged, {})

    sets.engaged.MidAcc = set_combine(sets.engaged.LowAcc, {})

    sets.engaged.HighAcc = set_combine(sets.engaged.MidAcc, {})

    sets.engaged.STP = set_combine(sets.engaged, {})

	--DT and Hybrid Engaged Sets
    sets.engaged.Hybrid = {
	    neck="Loricate Torque +1",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
	}
	
    sets.engaged.DT = set_combine(sets.engaged, {		
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance tights",
		feet="Malignance Boots",
	})

    --------------------------------------
    -- Custom buff sets
    --------------------------------------

    sets.magic_burst = {}

    sets.buff.Migawari = {}

    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
        
    sets.buff.Yonin = {}
    sets.buff.Innin = {}

    sets.CP = {back="Mecisto. Mantle"}
	sets.TreasureHunter = {body=gear.Herculean_Body_TH,waist="Chaac belt",feet="Volte Boots"}
	
	--Abyssea Proc weapons.
	sets.Normal = {main="Tauret",sub="Ternion Dagger +1"}
	sets.Cleave = {main="Malevolence",sub="Malevolence"}
	sets.Dagger = {main="Trainee Knife",sub="Moogle Guard"}
	sets.Sword = {main="Excalipoor II",sub="Moogle Guard"}
	sets.GreatSword = {main="Lament",sub="Flanged Grip"}
	sets.Scythe = {main="Lost Sickle +1",sub="Flanged Grip"}
	sets.Polearm = {main="Tzee Xicu's Blade",sub="Flanged Grip"}
	sets.Katana = {main="Trainee Burin",sub="Moogle Guard"}
	sets.GreatKatana = {main="Melon Slicer",sub="Flanged Grip"}
	sets.Club = {main="Club Hammer",sub="Moogle Guard"}
	sets.Staff = {main="Caver's Shovel",sub="Flanged Grip"}
	
end