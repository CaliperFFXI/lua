function init_gear_sets()

	--place items here to be grabbed when //gs org is run. (requires Organizer)
	organizer_items = {}

	sets.enmity = {}

    -- Precast 
    sets.precast.JA['Blood Weapon'] = {}
    sets.precast.JA['Diabolic Eye'] = {}
    sets.precast.JA['Nether Void'] = {}
    sets.precast.JA['Arcane Circle'] = {}
    sets.precast.JA['Last Resort'] = {}
    sets.precast.JA['Weapon Bash'] = {}
	
    sets.precast.JA['Lunge'] = {}
    sets.precast.JA['Swipe'] = {}
	
	sets.precast.JA['Provoke'] = {}
	sets.precast.JA['Warcry'] = {}
	sets.precast.JA['Defender'] = {}
	
    -- Fast cast sets for spells
    sets.precast.FC = {
		ammo="Impatiens",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}}
	}

    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})
    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})
       
    -- Weaponskill sets	
	
	-- Example 'FullTP' set :
	-- sets.precast.WS['Resolution'].FullTP = set_combine(sets.precast.WS['Resolution'],{})
	-- sets.precast.WS['Resolution'].Acc.FullTP = set_combine(sets.precast.WS['Resolution'].Acc,{})
	-- sets.precast.WS['Resolution'].HighAcc.FullTP = set_combine(sets.precast.WS['Resolution'].HighAcc,{})
	
    -- Resolution Sets (STR & Multi-Attack) --
    sets.precast.WS = {
		ammo="Seething Bomblet",
		head="Flam. Zucchetto +2",
		body="Flamma Korazin +1",
		hands={ name="Odyssean Gauntlets", augments={'Attack+20','Weapon skill damage +2%','DEX+15',}},
		legs={ name="Valor. Hose", augments={'Accuracy+25 Attack+25','"Dbl.Atk."+4','DEX+2','Attack+11',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear="Zwazo Earring +1",
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back="Bleating Mantle",
	}
	sets.precast.WS['Resolution'] = set_combine(sets.precast.WS, {
		ammo="Seething Bomblet",
		head="Flam. Zucchetto +2",
		body="Sulevia's Plate. +1",
		hands={ name="Odyssean Gauntlets", augments={'Attack+20','Weapon skill damage +2%','DEX+15',}},
		legs={ name="Valor. Hose", augments={'Accuracy+20','Weapon skill damage +1%','STR+12','Attack+10',}},
		feet="Flam. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Rufescent Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	})
	sets.precast.WS['Resolution'].Acc = set_combine(sets.precast.WS['Resolution'], {})
	sets.precast.WS['Resolution'].HighAcc = set_combine(sets.precast.WS['Resolution'].HighAcc, {})
	
	-- Scourge Sets (STR/VIT & WSD+) --
	sets.precast.WS['Scourge'] = set_combine(sets.precast.WS, {
		ammo="Knobkierrie",
		head={ name="Valorous Mask", augments={'Accuracy+29','Weapon skill damage +1%','DEX+15','Attack+8',}},
		body="Flamma Korazin +1",
		hands={ name="Odyssean Gauntlets", augments={'Attack+20','Weapon skill damage +2%','DEX+15',}},
		legs={ name="Valor. Hose", augments={'Accuracy+20','Weapon skill damage +1%','STR+12','Attack+10',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Apate Ring",
		right_ring="Rufescent Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	})
	sets.precast.WS['Scourge'].Acc = set_combine(sets.precast.WS['Scourge'], {})
	sets.precast.WS['Scourge'].HighAcc = set_combine(sets.precast.WS['Scourge'].HighAcc, {})

    -- Torcleaver Sets (VIT & WSD+) --
	sets.precast.WS['Torcleaver'] = set_combine(sets.precast.WS, {
		ammo="Seething Bomblet",
		head="Flam. Zucchetto +2",
		body="Sulevia's Plate. +1",
		hands={ name="Odyssean Gauntlets", augments={'Attack+20','Weapon skill damage +2%','DEX+15',}},
		legs={ name="Valor. Hose", augments={'Accuracy+20','Weapon skill damage +1%','STR+12','Attack+10',}},
		feet="Flam. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Rufescent Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	})
	sets.precast.WS['Torcleaver'].Acc = set_combine(sets.precast.WS['Torcleaver'], {})
	sets.precast.WS['Torcleaver'].HighAcc = set_combine(sets.precast.WS['Torcleaver'].HighAcc, {})
	
    -- Herculean Slash Sets (MAB/Ice) --
	sets.precast.WS['Herculean Slash'] = set_combine(sets.precast.WS, {
		ammo="Pemphredo Tathlum",
		head="Flam. Zucchetto +2",
		body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
		feet="Flam. Gambieras +2",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Friomisi Earring",
		left_ring="Acumen Ring",
		right_ring="Fenrir Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	})
	sets.precast.WS['Herculean Slash'].Acc = set_combine(sets.precast.WS['Herculean Slash'], {})
	sets.precast.WS['Herculean Slash'].HighAcc = set_combine(sets.precast.WS['Herculean Slash'].HighAcc, {})
	
    -- Catastrophe Sets (STR/INT & WSD+) --
	sets.precast.WS['Catastrophe'] = set_combine(sets.precast.WS, {
		ammo="Knobkierrie",
		head="Ratri Sallet",
		body="Ratri Plate",
		hands="Ratri Gadlings",
		legs="Ratri Cuisses",
		feet="Ratri Sollerets",
		neck="Caro Necklace",
		waist="Prosilio Belt +1",
		left_ear="Ishvara Earring",
		right_ear="Zwazo Earring +1",
		left_ring="Rufescent Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	})
	sets.precast.WS['Catastrophe'].Acc = set_combine(sets.precast.WS['Catastrophe'], {})
	sets.precast.WS['Catastrophe'].HighAcc = set_combine(sets.precast.WS['Catastrophe'].HighAcc, {})
	
    -- Entropy Sets (INT & Gorget/Belt, four hits) --
	sets.precast.WS['Entropy'] = set_combine(sets.precast.WS, {
		ammo="Knobkierrie",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Sulev. Gauntlets +2",
		legs={ name="Valor. Hose", augments={'Accuracy+25 Attack+25','"Dbl.Atk."+4','DEX+2','Attack+11',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Malignance Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	})
	sets.precast.WS['Entropy'].Acc = set_combine(sets.precast.WS['Entropy'], {})
	sets.precast.WS['Entropy'].HighAcc = set_combine(sets.precast.WS['Entropy'].HighAcc, {})
	
    -- Insurgency Sets (STR/INT, four hits) --
	sets.precast.WS['Insurgency'] = set_combine(sets.precast.WS, {
		ammo="Knobkierrie",
		head="Ratri Sallet",
		body="Ratri Plate",
		hands="Ratri Gadlings",
		legs="Ratri Cuisses",
		feet="Ratri Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	})
	sets.precast.WS['Insurgency'].Acc = set_combine(sets.precast.WS['Insurgency'], {})
	sets.precast.WS['Insurgency'].HighAcc = set_combine(sets.precast.WS['Insurgency'].HighAcc, {})
	
    -- Quietus Sets (STR/MND & WSD+) --
	sets.precast.WS['Quietus'] = set_combine(sets.precast.WS, {
		ammo="Knobkierrie",
		head="Ratri Sallet",
		body="Ratri Plate",
		hands="Ratri Gadlings",
		legs="Ratri Cuisses",
		feet="Ratri Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	})
	sets.precast.WS['Quietus'].Acc = set_combine(sets.precast.WS['Quietus'], {})
	sets.precast.WS['Quietus'].HighAcc = set_combine(sets.precast.WS['Quietus'].HighAcc, {})
	
    -- Cross Reaper Sets (STR/MND & WSD+) --
	sets.precast.WS['Cross Reaper'] = set_combine(sets.precast.WS, {
		ammo="Knobkierrie",
		head="Ratri Sallet",
		body="Ratri Plate",
		hands="Ratri Gadlings",
		legs="Ratri Cuisses",
		feet="Ratri Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	})
	sets.precast.WS['Cross Reaper'].Acc = set_combine(sets.precast.WS['Cross Reaper'], {})
	sets.precast.WS['Cross Reaper'].HighAcc = set_combine(sets.precast.WS['Cross Reaper'].HighAcc, {})
	
    -- Spinning Scythe Sets (STR & WSD+) --
	sets.precast.WS['Spinning Scythe'] = set_combine(sets.precast.WS, {
		ammo="Knobkierrie",
		head="Ratri Sallet",
		body="Ratri Plate",
		hands="Ratri Gadlings",
		legs="Ratri Cuisses",
		feet="Ratri Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	})
	sets.precast.WS['Spinning Scythe'].Acc = set_combine(sets.precast.WS['Spinning Scythe'], {})
	sets.precast.WS['Spinning Scythe'].HighAcc = set_combine(sets.precast.WS['Spinning Scythe'].HighAcc, {})
	
    -- Guillotine Sets (STR/MND) --
	sets.precast.WS['Guillotine'] = set_combine(sets.precast.WS, {
		ammo="Knobkierrie",
		head="Ratri Sallet",
		body="Ratri Plate",
		hands="Ratri Gadlings",
		legs="Ratri Cuisses",
		feet="Ratri Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	})	
	sets.precast.WS['Guillotine'].Acc = set_combine(sets.precast.WS['Guillotine'], {})
	sets.precast.WS['Guillotine'].HighAcc = set_combine(sets.precast.WS['Guillotine'].HighAcc, {})
	
    -- Infernal Scythe Sets (MAB/Dark) --
	sets.precast.WS['Infernal Scythe'] = set_combine(sets.precast.WS, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring",
	})
	sets.precast.WS['Infernal Scythe'].Acc = set_combine(sets.precast.WS['Infernal Scythe'], {})
	sets.precast.WS['Infernal Scythe'].HighAcc = set_combine(sets.precast.WS['Infernal Scythe'].HighAcc, {})
	
    -- Decimation Sets (STR & MA) -- 
	sets.precast.WS['Decimation'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Decimation'].Acc = set_combine(sets.precast.WS['Decimation'], {})
	sets.precast.WS['Decimation'].HighAcc = set_combine(sets.precast.WS['Decimation'].HighAcc, {})

    -- Rampage Sets (STR & MA) -- 
	sets.precast.WS['Rampage'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Rampage'].Acc = set_combine(sets.precast.WS['Rampage'], {})
	sets.precast.WS['Rampage'].HighAcc = set_combine(sets.precast.WS['Rampage'].HighAcc, {})

    -- Smash Axe Sets (STR & WSD+) --
	sets.precast.WS['Smash Axe'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Smash Axe'].Acc = set_combine(sets.precast.WS['Smash Axe'], {})
	sets.precast.WS['Smash Axe'].HighAcc = set_combine(sets.precast.WS['Smash Axe'].HighAcc, {})

    -- Full Break --
	sets.precast.WS['Full Break'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Full Break'].Acc = set_combine(sets.precast.WS['Full Break'], {})
	sets.precast.WS['Full Break'].HighAcc = set_combine(sets.precast.WS['Full Break'].HighAcc, {})
	
	-- Armor Break -
	sets.precast.WS['Armor Break'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Armor Break'].Acc = set_combine(sets.precast.WS['Armor Break'], {})
	sets.precast.WS['Armor Break'].HighAcc = set_combine(sets.precast.WS['Armor Break'].HighAcc, {})
	
    -- Fell Cleave --
	sets.precast.WS['Fell Cleave'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Fell Cleave'].Acc = set_combine(sets.precast.WS['Fell Cleave'], {})
	sets.precast.WS['Fell Cleave'].HighAcc = set_combine(sets.precast.WS['Fell Cleave'].HighAcc, {})
		
	-- Midcast 
	sets.midcast.FastRecast = sets.precast.FC
        
    sets.midcast.Utsusemi = {}
	
	---
	-- Consider using a spellMap to simplify these sets...
	---
	
    -- Magic Attack Bonus Set --
	sets.midcast.MAB = {
		ammo="Pemphredo Tathlum",
		head="Flam. Zucchetto +2",
		body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
		feet="Flam. Gambieras +2",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Friomisi Earring",
		left_ring="Acumen Ring",
		right_ring="Fenrir Ring",
		back="Toro Cape",
	}
	
    -- Magic Accuracy Set --
	sets.midcast.MACC = {
		ammo="Hydrocera",
		head="Flam. Zucchetto +2",
		body="Flamma Korazin +1",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs +1",
		feet="Flam. Gambieras +2",
		neck="Erra Pendant",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Digni. Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back="Solemnity Cape",
	}
	
	sets.midcast['Dark Magic'] = set_combine(sets.midcast.MACC, {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
		hands="Flam. Manopolas +1",
		legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
		feet="Flam. Gambieras +2",
		neck="Erra Pendant",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Friomisi Earring",
		left_ring="Evanescence Ring",
		right_ring="Archon Ring",
		back="Toro Cape",
	})
	
	-- Endark --
	sets.midcast.Endark = {
		legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
		neck="Erra Pendant",
		left_ring="Evanescence Ring",
	}
	-- Dread Spikes --
	sets.midcast['Dread Spikes'] = {
		ammo="Aqreqaq Bomblet",
		head="Ratri Sallet",
		body="Ratri Plate",
		hands="Ratri Gadlings",
		legs="Ratri Cuisses",
		feet="Ratri Sollerets",
		neck="Sanctity Necklace",
		waist="Gold Mog. Belt",
		left_ear="Eabani Earring",
		right_ear="Thureous Earring",
		left_ring="Meridian Ring",
		right_ring="Bloodbead Ring",
		back="Reiki Cloak",
	}

    -- Stun Sets --
	sets.midcast.Stun = set_combine(sets.midcast.MACC,{})
	sets.midcast.Stun.Acc = set_combine(sets.midcast.Stun,{})
	sets.midcast.Stun.HighAcc = set_combine(sets.midcast.Stun.Acc,{})
		
    -- Absorb --
	sets.midcast.Absorb = set_combine(sets.midcast.MACC, {
		legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
		neck="Erra Pendant",
		left_ring="Kishar Ring",
		right_ring="Archon Ring",
		back="Chuparrosa Mantle",
	})
	
	sets.midcast['Absorb-TP'] = set_combine(sets.midcast.Absorb,{})
	sets.midcast.Drain = set_combine(sets.midcast.MACC, {
		main="Misanthropy",
		sub="Kaja Grip",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
		hands="Flam. Manopolas +1",
		legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
		feet="Ratri Sollerets",
		neck="Erra Pendant",
		waist="Eschan Stone",
		left_ear="Digni. Earring",
		right_ear="Malignance Earring",
		left_ring="Archon Ring",
		right_ring="Evanescence Ring",
		back={ name="Niht Mantle", augments={'Attack+10','Dark magic skill +10','"Drain" and "Aspir" potency +24',}}
	})
	
    -- Enfeebling Magic --
	sets.midcast['Enfeebling Magic'] = set_combine(sets.midcast.MACC, {
		ring2="Kishar Ring"
	})
	
    -- Elemental Magic --
	sets.midcast['Elemental Magic'] = set_combine(sets.midcast.MAB, {})
	
	-- Enhancing Magic --
	sets.midcast['Enhancing Magic'] = {
		head="Carmine Mask +1",
		neck="Incanter's Torque",
		waist="Olympus Sash",
		legs="Carmine Cuisses +1"
	}
	
	sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {waist="Siegel Sash"})

    -- Resting --
    sets.resting = {}
    
    -- Idle --
    sets.idle = {
		ammo="Staunch Tathlum",
		head="Hjarrandi Helm",
		body="Chozor. Coselete",
		hands="Sulev. Gauntlets +2",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet="Sulev. Leggings +2",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Ethereal Earring",
		right_ear="Infused Earring",
		left_ring="Sulevia's Ring",
		right_ring="Gelatinous Ring +1",
		back="Solemnity Cape",
	}
	
	sets.idle.Refresh = set_combine(sets.idle, {})
	
    sets.idle.Town = set_combine(sets.idle, {})
	
	sets.idle.Field = sets.idle.Town
    
    sets.idle.Weak = {}
    
    -- Defense -- These sets are overlayed over any equipped set, if enabled.
	-- can be used as a panic button by toggling defenseMode
    sets.defense.PDT = {
		ammo="Staunch Tathlum",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +1",
		feet="Flam. Gambieras +2",
		neck="Loricate Torque +1",
		waist="Ioskeha Belt",
		left_ear="Cessance Earring",
		right_ear="Telos Earring",
		left_ring="Sulevia's Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}
	}
    sets.defense.MDT = set_combine(sets.defense.PDT, {})

    -- Engaged --
	
	-- If no defined set is available, default sets are chosen.
	-- Set construction is as follows...
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups
	-- Hyrbid mode cases are mutually exclusive with Defense Modes, as such:
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.HybridMode.CustomMeleeGroups
	
    sets.engaged = {
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body="Flamma Korazin +1",
		hands={ name="Valorous Mitts", augments={'Attack+7','"Dbl.Atk."+3','STR+1','Accuracy+11',}},
		legs={ name="Valor. Hose", augments={'Accuracy+25 Attack+25','"Dbl.Atk."+4','DEX+2','Attack+11',}},
		feet="Flam. Gambieras +2",
		neck="Lissome Necklace",
		waist="Ioskeha Belt",
		left_ear="Brutal Earring",
		right_ear="Telos Earring",
		left_ring="Hetairoi Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	}
	
	-- Offense Mode 'Acc'
    sets.engaged.Acc = set_combine(sets.engaged, {
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body="Flamma Korazin +1",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs +1",
		feet="Flam. Gambieras +2",
		neck="Lissome Necklace",
		waist="Kentarch Belt +1",
		left_ear="Cessance Earring",
		right_ear="Telos Earring",
		left_ring="Hetairoi Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	})
	
	-- Offense Mode 'HighAcc'
    sets.engaged.HighAcc = set_combine(sets.engaged.Acc, {
		ammo="Ginsen",
		head="Hjarrandi Helm",
		body="Hjarrandi Breastplate",
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +1",
		feet="Sulev. Leggings +2",
		neck="Lissome Necklace",
		waist="Ioskeha Belt",
		left_ear="Cessance Earring",
		right_ear="Telos Earring",
		left_ring="Gelatinous Ring +1",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	})
	
	-- default Hybrid 
	sets.engaged.DT = set_combine(sets.engaged, {})
	sets.engaged.Acc.DT = set_combine(sets.engaged.DT, {})
    sets.engaged.HighAcc.DT = set_combine(sets.engaged.Acc.DT, {})
	
	-- Apocalypse engaged --
	sets.engaged.Apocalypse = set_combine(sets.engaged, {})
	sets.engaged.Apocalypse.Acc = set_combine(sets.engaged.Apocalypse, {})
	sets.engaged.Apocalypse.HighAcc = set_combine(sets.engaged.Apocalypse.Acc, {})
	
	-- Caladbolg engaged --
	sets.engaged.Caladbolg = set_combine(sets.engaged, {})
	sets.engaged.Caladbolg.Acc = set_combine(sets.engaged.Caladbolg, {})
	sets.engaged.Caladbolg.HighAcc = set_combine(sets.engaged.Caladbolg.Acc, {})
	
	-- HepatizonAxe engaged --
	sets.engaged.HepatizonAxe = set_combine(sets.engaged, {})
	sets.engaged.HepatizonAxe.Acc = set_combine(sets.engaged.HepatizonAxe, {})
	sets.engaged.HepatizonAxe.HighAcc = set_combine(sets.engaged.HepatizonAxe.Acc, {})
	
	-- Naegling engaged --
	sets.engaged.Naegling = set_combine(sets.engaged, {})
	sets.engaged.Naegling.Acc = set_combine(sets.engaged.Naegling, {})
	sets.engaged.Naegling.HighAcc = set_combine(sets.engaged.Naegling.Acc, {})

	-- Zulfiqar engaged --
	sets.engaged.Zulfiqar = set_combine(sets.engaged, {})
	sets.engaged.Zulfiqar.Acc = set_combine(sets.engaged.Zulfiqar, {})
	sets.engaged.Zulfiqar.HighAcc = set_combine(sets.engaged.Zulfiqar.Acc, {})
	
	-- Conditional Sets --
	-- Doomed
    sets.buff.Doom = {}
	-- 'Tag' TreasureHunter
    sets.TreasureHunter = {}
	-- Souleater WS Set --
    sets.SoulEater_WS = {}
    -- Arcane Circle/Founders Breastplate WS Set --
	sets.ArcaneCircle_WS = {}
	
	-- NetherVoid -- Equipped post_midcast if buffactive
	sets.NetherVoid = {legs="Heath. Flanchard +1"}
	-- Dark Seal -- Equipped post_midcast if buffactive
	sets.DarkSeal = {head="Fall. Burgeonet +3"}
	
	-- GavialisHelm --
	sets.GavialisHelm = {head="Gavialis Helm"}
	-- Equipped at Night time to left earring --
	sets.LugraLeft = {left_ear="Lugra Earring +1"}
	-- Elemental Sash --
	sets.Obi = {waist="Hachirin-no-Obi"}
	-- Kiting Mode --
    sets.Kiting = {legs="Carmine Cuisses +1"}
	
	-- Weapon sets -- determined by state.WeaponSet
	sets.Apocalypse = {main="Apocalypse",sub="Utu Grip"}
	sets.Caladbolg = {main="Caladbolg",sub="Utu Grip"}
	sets.HepatizonAxe = {main="Hepatizon Axe",sub="Utu Grip"}
	sets.Naegling = {main="Naegling",sub="Reikiko"}
	sets.Zulfiqar = {main="Zulfiqar",sub="Utu Grip"}
		
end
