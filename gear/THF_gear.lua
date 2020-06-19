-- Define sets and vars used by this job file.
function init_gear_sets()

	sets.enmity = {    
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

    sets.buff['Sneak Attack'] = {}

    sets.buff['Trick Attack'] = {}

    -- Actions we want to use to tag TH.
    sets.precast.JA['Collaborator'] = {}
    sets.precast.JA['Accomplice'] = {}
    sets.precast.JA['Flee'] = {feet="Pillager's Poulaines"}
    sets.precast.JA['Hide'] = {body="Pillager's Vest +3"}
    sets.precast.JA['Conspirator'] = {body="Skulker's Vest +1"} 
    sets.precast.JA['Steal'] = {}
    sets.precast.JA['Despoil'] = {}
    sets.precast.JA['Perfect Dodge'] = {}
    sets.precast.JA['Feint'] = {}
    --sets.precast.JA['Sneak Attack'] = sets.buff['Sneak Attack']
    --sets.precast.JA['Trick Attack'] = sets.buff['Trick Attack']

    sets.precast.Waltz = {body="Passion Jacket",}
    sets.precast.Waltz['Healing Waltz'] = {}

    sets.precast.FC = {
		head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','AGI+2','Mag. Acc.+7','"Mag.Atk.Bns."+13',}},
		body={ name="Taeon Tabard", augments={'"Fast Cast"+3','Phalanx +3',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		feet={ name="Taeon Boots", augments={'"Fast Cast"+5','Phalanx +2',}},
		neck="Voltsurge Torque",
		left_ear="Loquac. Earring",
		right_ear="Etiolation Earring",
		left_ring="Weather. Ring",
		right_ring="Lebeche Ring",
	}

    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})
	
	sets.precast.RA = {
		range="Antitail +1",
		head="Volte Tiara",
		legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
		feet="Meg. Jam. +2",
		waist="Yemaya Belt",
	}

    sets.precast.WS = {back="Sacro Mantle"} 

    sets.precast.WS.Acc = set_combine(sets.precast.WS, {})

    sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {})

    sets.precast.WS['Exenterator'].Acc = set_combine(sets.precast.WS['Exenterator'], {})

    sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS, {
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'Accuracy+20','Attack+20','"Subtle Blow"+8',}},
		legs="Lustr. Subligar +1", 
		feet="Lustra. Leggings +1",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ear="Sherida Earring",
		right_ear="Odr Earring",
		left_ring="Begrudging Ring",
		right_ring="Ilabrat Ring",
	})

    sets.precast.WS['Evisceration'].Acc = set_combine(sets.precast.WS['Evisceration'], {})

    sets.precast.WS['Rudra\'s Storm'] = set_combine(sets.precast.WS, {})

    sets.precast.WS['Rudra\'s Storm'].Acc = set_combine(sets.precast.WS['Rudra\'s Storm'], {})

    sets.precast.WS['Mandalic Stab'] = sets.precast.WS["Rudra's Storm"]
    sets.precast.WS['Mandalic Stab'].Acc = sets.precast.WS["Rudra's Storm"].Acc

    sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS, {
		ammo="Pemphredo Tahtlum",
		head=gear.Herculean_Head_MAB,
		body=gear.Herculean_Body_TH,
		hands=gear.Herculean_Hands_WSD,
		legs=gear.Herculean_Legs_MAB,
		feet=gear.Herculean_Feet_MAB,
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Dingir Ring",
		right_ring="Arvina Ringlet +1",
	})
	
	sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
		head="Meghanada Visor +2",
		body="Meg. Cuirie +2",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Rufescent Ring",
	})
	
    sets.midcast.FastRecast = sets.precast.FC

    sets.midcast.SpellInterrupt = {}

    sets.midcast.Utsusemi = sets.midcast.SpellInterrupt
	
	sets.midcast.RA = {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Meg. Gloves +2",
		legs="Malignance Tights",
		feet="Meg. Jam. +2",
		neck="Iskur Gorget",
		waist="Yemaya Belt",
		left_ear="Enervating Earring",
		right_ear="Telos Earring",
		left_ring="Dingir Ring",
		right_ring="Cacoethic Ring +1",
		back="Sacro Mantle",
	}
	
    sets.resting = {}

    sets.idle = {
	    head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Pillager's Poulaines",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Warden's Ring",
		back="Reiki Cloak",
	}

    sets.idle.Town = set_combine(sets.idle, {feet="Pillager's Poulaines"})

	sets.idle.Regen = set_combine(sets.idle, {
		head="Meghanada Visor +2",
		body="Meg. Cuirie +2",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Bathy Choker +1",
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Solemnity Cape",
	})

    sets.defense.PDT = {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		legs="Malignance Tights",
		neck="Loricate Torque +1",
		left_ring="Defending Ring",
	}
	
    sets.defense.MDT = {}

    -- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups

    sets.engaged = {
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands="Adhemar Wrist. +1",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','"Triple Atk."+2','Attack+14',}},
		neck="Anu Torque",
		waist="Windbuffet Belt +1",
		left_ear="Sherida Earring",
		right_ear="Suppanomimi",
		left_ring="Gere Ring",
		right_ring="Epona's Ring",
		back="Sacro Mantle",
	}
	
	sets.engaged.DT = set_combine(sets.engaged, {
		hands="Malignance Gloves",
		neck="Loricate Torque +1",
		right_ring="Defending Ring",
	})
	
	-- OffenseMode 'Acc' sets. Activated if HyrbidMode set to 'DT'
	sets.engaged.Acc = set_combine(sets.engaged, {})
	sets.engaged.Acc.DT = set_combine(sets.engaged.Acc, {})
	
	-- Hybrid Mode Crit
	sets.engaged.Crit = set_combine(sets.engaged, {
		legs="Mummu Kecks +2",
		feet="Mummu Gamash. +2",
	})
	
    sets.Kiting = {feet="Pillager's Poulaines"}
    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
    sets.TreasureHunter = {hands="Plunderer's Armlets +1", feet="Skulk. Poulaines +1",}
	
	sets.Normal = {main="Aeneas",sub="Ternion Dagger +1",range="Antitail +1"}
	sets.Cleave = {main="Malevolence",sub="Malevolence",range="Antitail +1"}

end
