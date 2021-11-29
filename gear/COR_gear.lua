function init_gear_sets()

	-- Precast Sets
    sets.precast.JA['Snake Eye'] = {legs="Lanun Trews +1"}
    sets.precast.JA['Wild Card'] = {feet="Lanun Bottes +1"}
    sets.precast.JA['Random Deal'] = {body="Lanun Frac +1"}

    sets.precast.CorsairRoll = {head="Lanun Tricorne +1",body="Lanun Frac +1",neck="Regal Necklace",left_ring="Luzaf's Ring",back="Camulus's Mantle"}

    sets.precast.CorsairRoll.Gun = set_combine(sets.precast.CorsairRoll.Engaged, {range="Compensator"})
    sets.precast.CorsairRoll["Caster's Roll"] = set_combine(sets.precast.CorsairRoll, {legs="Chas. Culottes +1"})
    sets.precast.CorsairRoll["Courser's Roll"] = set_combine(sets.precast.CorsairRoll, {feet="Chass. Bottes +1"})
    sets.precast.CorsairRoll["Blitzer's Roll"] = set_combine(sets.precast.CorsairRoll, {head="Chass. Tricorne +1"})
    sets.precast.CorsairRoll["Tactician's Roll"] = set_combine(sets.precast.CorsairRoll, {body="Chasseur's Frac +1"})
    sets.precast.CorsairRoll["Allies' Roll"] = set_combine(sets.precast.CorsairRoll, {hands="Chasseur's Gants +1"})

    sets.precast.LuzafRing = set_combine(sets.precast.CorsairRoll, {left_ring="Luzaf's Ring"})
    sets.precast.FoldDoubleBust = {hands="Lanun Gants +1"}

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
		head={ name="Taeon Chapeau", augments={'"Snapshot"+4','"Snapshot"+5',}},
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs="Oshosi Trousers",
		feet="Meg. Jam. +2",
		waist="Yemaya Belt",
	} 

    sets.precast.RA.Flurry1 = set_combine(sets.precast.RA, {}) 

    sets.precast.RA.Flurry2 = set_combine(sets.precast.RA.Flurry1, {}) 


    sets.precast.WS = {
		ammo=gear.WSbullet,
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Lissome Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Rufescent Ring",
		right_ring="Ilabrat Ring",
		back="Camulus's Mantle"
	}

    sets.precast.WS.Acc = set_combine(sets.precast.WS, {})

    sets.precast.WS['Last Stand'] = {
		ammo=gear.RAbullet,
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
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Dingir Ring",
		right_ring="Archon Ring",
		back=gear.COR_AGI_WS,
	}

    sets.precast.WS['Hot Shot'] = sets.precast.WS['Wildfire']

    sets.precast.WS['Leaden Salute'] = set_combine(sets.precast.WS['Wildfire'], {
		head="Pixie Hairpin +1",
		right_ring="Archon Ring",
	})

    sets.precast.WS['Leaden Salute'].FullTP = set_combine(sets.precast.WS['Wildfire'], {right_ear="Hermetic Earring"})

    sets.precast.WS['Evisceration'] = {}

    sets.precast.WS['Evisceration'].Acc = set_combine(sets.precast.WS['Evisceration'], {})

    sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Caro Necklace",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Rufescent Ring",
		right_ring="Ilabrat Ring",
		back=gear.COR_AGI_WS,
	})

    sets.precast.WS['Savage Blade'].FullTP = set_combine(sets.precast.WS, {neck="Caro Necklace",left_ear="Ishvara Earring"})

    sets.precast.WS['Swift Blade'] = set_combine(sets.precast.WS, {})


    sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS['Swift Blade'], {}) 


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
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Iskur Gorget",
		waist="Yemaya Belt",
		left_ear="Enervating Earring",
		right_ear="Dedition Earring",
		left_ring="Dingir Ring",
		right_ring="Ilabrat Ring",
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
    sets.Kiting = {legs="Carmine Cuisses +1"}
    sets.resting = {}

    sets.idle = {
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		back="Solemnity Cape",
	}

    sets.idle.DT = set_combine(sets.idle, {})

    sets.idle.Refresh = set_combine(sets.idle, {})

    sets.idle.Town = set_combine(sets.idle, sets.Kiting, {})

	-- Defense Sets
    sets.defense.PDT = sets.idle.DT

    sets.defense.MDT = sets.defense.PDT


    -- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups

    sets.engaged = {
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'Accuracy+20','Attack+20','"Subtle Blow"+8',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet="Malignance Boots",
		neck="Iskur Gorget",
		waist="Windbuffet Belt +1",
		left_ear="Brutal Earring",
		right_ear="Telos Earring",
		left_ring="Epona's Ring",
		right_ring="Chirich Ring +1",
		back="Relucent Cape",
	}

    sets.engaged.Acc = set_combine(sets.engaged, {
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
	})
		
	-- Hybrid Set
    sets.engaged.DT = set_combine(sets.engaged, {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
	})
	
	sets.engaged.Acc.DT = set_combine(sets.engaged.DT, sets.engaged.Acc, {})
	
	-- DualWield Sets
	sets.engaged.DualWield = set_combine(sets.engaged, {    
		left_ear="Suppanomimi",
	})
	sets.engaged.DualWield.Acc = set_combine(sets.DualWield, {})
	sets.engaged.DualWield.DT = set_combine(sets.DualWield, {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Iskur Gorget",
		waist="Reiki Yotai",
		left_ear="Eabani Earring",
		right_ear="Dedition Earring",
		left_ring="Epona's Ring",
		right_ring="Chirich Ring +1",
		back="Relucent Cape",
	})
	sets.engaged.DualWield.Acc.DT = set_combine(sets.engaged.DualWield.DT, {
		right_ear="Telos Earring",
	})

	--Special Sets
    sets.buff.Doom = {}

    sets.CP = {back="Mecisto. Mantle"}
    sets.TreasureHunter = {body=gear.Herculean_Body_TH,waist="Chaac Belt",feet="Volte boots"}
	
	sets.weapons.Fomalhaut = {main="Naegling",sub="Tauret",range="Fomalhaut",ammo=gear.RAbullet}
	sets.weapons.DualWield.Fomalhaut = {main="Naegling",sub="Tauret",range="Fomalhaut",ammo=gear.RAbullet}
	
	sets.weapons.Doomsday = {main="Tauret",sub="Naegling",range="Doomsday",ammo=gear.RAbullet}
	sets.weapons.DualWield.Doomsday = {main="Tauret",sub="Naegling",range="Doomsday",ammo=gear.RAbullet}
	

end
