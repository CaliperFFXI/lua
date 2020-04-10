function init_gear_sets()

	-- Precast Sets
    sets.precast.JA['Snake Eye'] = {legs="Lanun Trews +3"}
    sets.precast.JA['Wild Card'] = {feet="Lanun Bottes +3"}
    sets.precast.JA['Random Deal'] = {body="Lanun Frac +3"}

    sets.precast.CorsairRoll = {neck="Regal Necklace",left_ring="Luzaf's Ring"}

    sets.precast.CorsairRoll.Gun = set_combine(sets.precast.CorsairRoll.Engaged, {range="Compensator"})
    sets.precast.CorsairRoll["Caster's Roll"] = set_combine(sets.precast.CorsairRoll, {legs="Chas. Culottes +1"})
    sets.precast.CorsairRoll["Courser's Roll"] = set_combine(sets.precast.CorsairRoll, {feet="Chass. Bottes +1"})
    sets.precast.CorsairRoll["Blitzer's Roll"] = set_combine(sets.precast.CorsairRoll, {head="Chass. Tricorne +1"})
    sets.precast.CorsairRoll["Tactician's Roll"] = set_combine(sets.precast.CorsairRoll, {body="Chasseur's Frac +1"})
    sets.precast.CorsairRoll["Allies' Roll"] = set_combine(sets.precast.CorsairRoll, {hands="Chasseur's Gants +1"})

    sets.precast.LuzafRing = set_combine(sets.precast.CorsairRoll, {left_ring="Luzaf's Ring"})
    sets.precast.FoldDoubleBust = {hands="Lanun Gants +3"}

    sets.precast.Waltz = {}

    sets.precast.Waltz['Healing Waltz'] = {}

    sets.precast.FC = {
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Taeon Tabard", augments={'"Fast Cast"+3','Phalanx +3',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
		feet={ name="Taeon Boots", augments={'"Fast Cast"+5','Phalanx +2',}},
		neck="Voltsurge Torque",
		waist="Yemaya Belt",
		left_ear="Loquac. Earring",
		right_ear="Etiolation Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
	}

    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})

    sets.precast.RA = {
		ammo=gear.RAbullet,
		head={ name="Taeon Chapeau", augments={'"Snapshot"+4','"Snapshot"+3',}},
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs="Oshosi Trousers",
		feet="Meg. Jam. +2",
		waist="Yemaya Belt",
	} 

    sets.precast.RA.Flurry1 = set_combine(sets.precast.RA, {}) 

    sets.precast.RA.Flurry2 = set_combine(sets.precast.RA.Flurry1, {}) 


    sets.precast.WS = {
		ammo=gear.WSbullet,
		head="Meghanada Visor +2",
		body="Meg. Cuirie +2",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Lissome Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Rufescent Ring",
		right_ring="Ilabrat Ring",
		back="Gunslinger's Cape"
	}

    sets.precast.WS.Acc = set_combine(sets.precast.WS, {})

    sets.precast.WS['Last Stand'] = {
		ammo=gear.RAbullet,
		head="Meghanada Visor +2",
		body="Meg. Cuirie +2",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Iskur Gorget",
		waist="Fotia Belt",
		left_ear="Enervating Earring",
		right_ear="Telos Earring",
		left_ring="Dingir Ring",
		right_ring="Ilabrat Ring",
		back="Gunslinger's Cape"
	}

    sets.precast.WS['Last Stand'].Acc = set_combine(sets.precast.WS['Last Stand'], {})

    sets.precast.WS['Wildfire'] = {
		ammo=gear.MAbullet,
		head={ name="Herculean Helm", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','AGI+2','Mag. Acc.+7','"Mag.Atk.Bns."+13',}},
		body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs=gear.Herculean_Legs_MAB,
		feet=gear.Herculean_Feet_MAB,
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Dingir Ring",
		right_ring="Ilabrat Ring",
		back="Gunslinger's Cape"
	}

    sets.precast.WS['Hot Shot'] = sets.precast.WS['Wildfire']

    sets.precast.WS['Leaden Salute'] = set_combine(sets.precast.WS['Wildfire'], {
		head="Pixie Hairpin +1",
		right_ring="Archon Ring",
	})

    sets.precast.WS['Evisceration'] = {
	    head="Meghanada Visor +2",
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Fortified Ring",
		right_ring="Begrudging Ring",
		back="Relucent Cape",
	}

    sets.precast.WS['Evisceration'].Acc = set_combine(sets.precast.WS['Evisceration'], {})

    sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {neck="Caro Necklace",})

    sets.precast.WS['Savage Blade'].Acc = set_combine(sets.precast.WS['Savage Blade'], {})

    sets.precast.WS['Swift Blade'] = set_combine(sets.precast.WS, {})

    sets.precast.WS['Swift Blade'].Acc = set_combine(sets.precast.WS['Swift Blade'], {})

    sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS['Swift Blade'], {}) 

    sets.precast.WS['Requiescat'].Acc = set_combine(sets.precast.WS['Requiescat'], {})

    sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS['Wildfire'], {})

	-- Midcast Sets
    sets.midcast.FastRecast = sets.precast.FC

    sets.midcast.SpellInterrupt = {}

    sets.midcast.Cure = {}

    sets.midcast.Utsusemi = sets.midcast.SpellInterrupt

    sets.midcast.CorsairShot = {
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		hands="Oshosi Gloves",
		legs="Oshosi Trousers",
		feet="Oshosi Leggings",
		neck="Sanctity Necklace",
		waist="Flume Belt +1",
		left_ear="Digni. Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back="Gunslinger's Cape"
	}

    sets.midcast.CorsairShot.STP = {}

    sets.midcast.CorsairShot.Resistant = set_combine(sets.midcast.CorsairShot, {})

    sets.midcast.CorsairShot['Light Shot'] = sets.midcast.CorsairShot.Resistant
    sets.midcast.CorsairShot['Dark Shot'] = sets.midcast.CorsairShot.Resistant
    sets.midcast.CorsairShot.Enhance = {body="Mirke Wardecors", feet="Chass. Bottes +1"}

    -- Ranged gear
    sets.midcast.RA = {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Adhemar Wrist. +1", augments={'Accuracy+20','Attack+20','"Subtle Blow"+8',}},
		legs="Malignance Tights",
		feet="Meg. Jam. +2",
		neck="Iskur Gorget",
		waist="Yemaya Belt",
		left_ear="Enervating Earring",
		right_ear="Dedition Earring",
		left_ring="Dingir Ring",
		right_ring="Ilabrat Ring",
		back="Gunslinger's Cape"
	}

    sets.midcast.RA.Acc = set_combine(sets.midcast.RA, {
		right_ear="Telos Earring",
		right_ring="Cacoethic Ring +1",
	})

    sets.midcast.RA.HighAcc = set_combine(sets.midcast.RA.Acc, {})

    sets.midcast.RA.Critical = set_combine(sets.midcast.RA, {})

    sets.midcast.RA.STP = set_combine(sets.midcast.RA, {})

    sets.TripleShot = {} 

    sets.TripleShotCritical = {}


	-- Idle Sets
    sets.resting = {}

    sets.idle = {
		head="Meghanada Visor +2",
		body="Meg. Cuirie +2",
		hands="Meg. Gloves +2",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Meg. Jam. +2",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Warden's Ring",
		back="Solemnity Cape",
	}

    sets.idle.DT = set_combine(sets.idle, {})

    sets.idle.Refresh = set_combine(sets.idle, {})

    sets.idle.Town = set_combine(sets.idle, {})

	-- Defense Sets
    sets.defense.PDT = sets.idle.DT

    sets.defense.MDT = sets.defense.PDT

    sets.Kiting = {legs="Carmine Cuisses +1"}

    -- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups

    sets.engaged = {
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'Accuracy+20','Attack+20','"Subtle Blow"+8',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','"Triple Atk."+2','Attack+14',}},
		neck="Lissome Necklace",
		waist="Kentarch +1 Belt",
		left_ear="Suppanomimi",
		right_ear="Brutal Earring",
		left_ring="Epona's Ring",
		right_ring="Petrov Ring",
		back="Relucent Cape",
	}

    sets.engaged.Acc = set_combine(sets.engaged, {
		right_ear="Telos Earring",
		right_ring="Ilabrat Ring",
	})

    sets.engaged.MidAcc = set_combine(sets.engaged.Acc, {})

    sets.engaged.HighAcc = set_combine(sets.engaged.MidAcc, {})

    sets.engaged.STP = set_combine(sets.engaged, {})
		
	--Hybrid Set
    sets.engaged.Hybrid = {}

	--Special Sets
    sets.buff.Doom = {}

	sets.FullTP = {}
    sets.Obi = {waist="Hachirin-no-Obi"}
    sets.CP = {back="Mecisto. Mantle"}
    sets.TreasureHunter = {body=gear.Herculean_Body_TH,head="Volte Cap", waist="Chaac Belt"}
	
	sets.Fomalhaut = {range="Fomalhaut",ammo=gear.RAbullet}
	sets.Doomsday = {range="Doomsday",ammo=gear.RAbullet}

end
