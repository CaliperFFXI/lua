function init_gear_sets()

    -- Precast
    sets.Enmity = {
		ammo="Iron Gobbet",
		head="Halitus Helm",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		legs="Zoar Subligar +1",
		feet="Ahosi Leggings",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Goading Belt",
		left_ear="Cryptic Earring",
		right_ear="Friomisi Earring",
		left_ring="Vexer Ring +1",
		right_ring="Vexer Ring +1",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Mag. Evasion+15',}},
	}

    sets.precast.JA['Provoke'] = sets.Enmity
    sets.precast.JA['No Foot Rise'] = {body={ name="Horos Casaque +3", augments={'Enhances "No Foot Rise" effect',}},}
    sets.precast.JA['Trance'] = {head={ name="Horos Tiara +3", augments={'Enhances "Trance" effect',}},}
	sets.precast.JA['Saber Dance'] = {legs={ name="Horos Tights +3", augments={'Enhances "Saber Dance" effect',}},}
    
	sets.precast.Waltz = {
		ammo="Yamarang",
		head="Nyame Helm",
		body="Maxixi Casaque +1",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck={ name="Etoile Gorget +2", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Eabani Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back={ name="Senuna's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	} -- Waltz Potency/CHR
    sets.precast.WaltzSelf = set_combine(sets.precast.Waltz, {}) -- Waltz effects received
    sets.precast.Waltz['Healing Waltz'] = {}
	
    sets.precast.Samba = {head="Maxixi Tiara +2", back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Mag. Evasion+15',}},}
	
    sets.precast.Jig = {legs={ name="Horos Tights +3", augments={'Enhances "Saber Dance" effect',}}, feet="Maxixi Shoes +1"}
	
    sets.precast.Step = {
		ammo="Yamarang",
		head="Maxixi Tiara +2",
		body="Malignance Tabard",
		hands="Maxixi Bangles +3",
		legs={ name="Horos Tights +3", augments={'Enhances "Saber Dance" effect',}},
		feet={ name="Horos T. Shoes +3", augments={'Enhances "Closed Position" effect',}},
		neck={ name="Etoile Gorget +2", augments={'Path: A',}},
		waist="Olseni Belt",
		left_ear="Mache Earring +1",
		right_ear="Mache Earring +1",
		left_ring="Regal Ring",
		right_ring="Chirich Ring +1",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
    sets.precast.Step['Feather Step'] = set_combine(sets.precast.Step, {feet="Macu. Toe shoes +1",})
	
    sets.precast.Flourish1 = {}
    sets.precast.Flourish1['Animated Flourish'] = sets.Enmity
    sets.precast.Flourish1['Violent Flourish'] = {} -- Magic Accuracy
    sets.precast.Flourish1['Desperate Flourish'] = {} -- Accuracy
    sets.precast.Flourish2 = {}
    sets.precast.Flourish2['Reverse Flourish'] = {hands="Macu. Bangles +1", back={ name="Toetapper Mantle", augments={'"Store TP"+2','"Dual Wield"+3','"Rev. Flourish"+30',}},}
    sets.precast.Flourish3 = {}
    sets.precast.Flourish3['Striking Flourish'] = {}
    sets.precast.Flourish3['Climactic Flourish'] = {head="Maculele Tiara +1",}

    sets.precast.FC = {
			ammo="Impatiens",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		neck="Magoraga Beads",
		left_ear="Loquac. Earring",
		left_ring="Defending Ring",
		right_ring="Prolix Ring",

	}
    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})


	-- Weapon Skills
    sets.precast.WS = {
		ammo="Aurgelmir Orb +1",
		head={ name="Lustratio Cap +1", augments={'INT+35','STR+8','DEX+8',}},
		body="Gleti's Cuirass",
		hands="Maxixi Bangles +3",
		legs={ name="Horos Tights +3", augments={'Enhances "Saber Dance" effect',}},
		feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
		neck={ name="Etoile Gorget +2", augments={'Path: A',}},
		waist={ name="Kentarch Belt +1", augments={'Path: A',}},
		left_ear="Odr Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	} -- default set

    sets.precast.WS.Acc = set_combine(sets.precast.WS, {})

    sets.precast.WS.Critical = {}

    sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {})
    sets.precast.WS['Exenterator'].Acc = set_combine(sets.precast.WS['Exenterator'], {})

    sets.precast.WS['Pyrrhic Kleos'] = set_combine(sets.precast.WS, {
		ammo="Coiste Bodhar",
		head={ name="Lustratio Cap +1", augments={'INT+35','STR+8','DEX+8',}},
		body={ name="Horos Casaque +3", augments={'Enhances "No Foot Rise" effect',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear="Cessance Earring",
		left_ring="Gere Ring",
		right_ring="Epona's Ring",
		back={ name="Senuna's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	})
    sets.precast.WS['Pyrrhic Kleos'].Acc = set_combine(sets.precast.WS['Pyrrhic Kleos'], {})

    sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS, {
		ammo="Charis Feather",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Gleti's Cuirass",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Gleti's Breeches",
		feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','"Triple Atk."+4','AGI+9','Attack+7',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear="Odr Earring",
		left_ring="Regal Ring",
		right_ring="Ilabrat Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Mag. Evasion+15',}},
	})
    sets.precast.WS['Evisceration'].Acc = set_combine(sets.precast.WS['Evisceration'], {})

    sets.precast.WS['Rudra\'s Storm'] = set_combine(sets.precast.WS, {
	head={ name="Lustratio Cap +1", augments={'INT+35','STR+8','DEX+8',}},
	legs={ name="Horos Tights +3", augments={'Enhances "Saber Dance" effect',}},
	})
    sets.precast.WS['Rudra\'s Storm'].Acc = set_combine(sets.precast.WS['Rudra\'s Storm'], {})

    sets.precast.WS['Aeolian Edge'] = {
	    ammo="Pemphredo Tathlum",
    head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +4%','STR+9','Mag. Acc.+15','"Mag.Atk.Bns."+12',}},
    body={ name="Horos Casaque +3", augments={'Enhances "No Foot Rise" effect',}},
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','AGI+8','Mag. Acc.+11','"Mag.Atk.Bns."+14',}},
    feet="Malignance Boots",
    neck="Fotia Gorget",
    waist="Eschan Stone",
    left_ear="Sortiarius Earring",
    right_ear="Friomisi Earring",
    left_ring="Weather. Ring",
    right_ring="Stikini Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

    sets.midcast.SpellInterrupt = {}

    sets.midcast.Utsusemi = sets.midcast.SpellInterrupt

	-- Idle
    sets.resting = {}

    sets.idle = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Gleti's Cuirass",
		hands="Malignance Gloves",
		legs="Gleti's Breeches",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Engraved Belt",
		left_ear="Eabani Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Mag. Evasion+15',}},
	}
	
	sets.idle.Regen = set_combine(sets.idle, {})

    sets.idle.Town = set_combine(sets.idle, {
		ammo="Staunch Tathlum +1",
		head="Gleti's Mask",
		body="Gleti's Cuirass",
		hands="Gleti's Gauntlets",
		legs="Gleti's Breeches",
		feet="Gleti's Boots",
		neck="Loricate Torque +1",
		waist="Engraved Belt",
		left_ear="Eabani Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Senuna's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	})

    sets.idle.Weak = set_combine(sets.idle, {})

	-- Defense
    sets.defense.PDT = {
		ammo="Aurgelmir Orb +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Gleti's Breeches",
		feet="Malignance Boots",
		neck={ name="Etoile Gorget +2", augments={'Path: A',}},
		waist="Windbuffet Belt +1",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Mag. Evasion+15',}},
	}
    sets.defense.MDT = sets.defense.PDT

    sets.Kiting = {}
	
	-- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups

    sets.engaged = {
		ammo="Aurgelmir Orb +1",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Horos Casaque +3", augments={'Enhances "No Foot Rise" effect',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Horos Toe Shoes +3", augments={'Enhances "Closed Position" effect',}},
		neck="Etoile Gorget +2",
		waist="Windbuffet Belt +1",
		left_ear="Sherida Earring",
		right_ear="Brutal Earring",
		left_ring="Gere Ring",
		right_ring="Epona's Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Mag. Evasion+15',}},
	}

    sets.engaged.Acc = set_combine(sets.engaged, {})
	
	--Twashtar
	sets.engaged.Twashtar = set_combine(sets.engaged, {})
	sets.engaged.Twashtar.Acc = set_combine(sets.engaged.Acc, {})
	
	sets.engaged.Karambit = set_combine(sets.engaged, {
		left_ear="Mache Earring +1",
		right_ear="Mache Earring +1",
	})


	-- Conditional Sets
    sets.SaberDance = {legs={ name="Horos Tights +3", augments={'Enhances "Saber Dance" effect',}},} -- Required to be on full time?
    sets.FanDance = {hands={ name="Horos Bangles +3", augments={'Enhances "Fan Dance" effect',}},} -- Required to be on during Fan Dance
    sets.ClimacticFlourish = {ammo="Coiste Bodhar",head="Maculele Tiara +1", body="Gleti's Cuirass"}
    sets.ClosedPosition = {feet={ name="Horos Toe Shoes +3", augments={'Enhances "Closed Position" effect',}},legs={ name="Horos Tights +3", augments={'Enhances "Saber Dance" effect',}},}
   
   sets.buff.Doom = {}
    sets.CP = {}
	sets.TreasureHunter = {head={ name="Herculean Helm", augments={'Mag. Acc.+5','Pet: STR+10','"Treasure Hunter"+2','Accuracy+12 Attack+12','Mag. Acc.+4 "Mag.Atk.Bns."+4',}},
    feet={ name="Herculean Boots", augments={'Pet: DEX+4','AGI+5','"Treasure Hunter"+1',}},waist="Chaac Belt"}
	
	--Weapon Sets
	sets.weapons.Twashtar = {main={ name="Twashtar", augments={'Path: A',}}, sub="Gleti's Knife",}
	sets.weapons.TpBonus = {main={ name="Twashtar", augments={'Path: A',}}, sub={ name="Fusetto +2", augments={'TP Bonus +1000',}},}
	sets.weapons.Blurred = {main={ name="Twashtar", augments={'Path: A',}}, sub="Blurred Knife +1",}
	sets.weapons.Karambit = {main="Karambit"}
	

end
