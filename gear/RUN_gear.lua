function init_gear_sets()
    -- Enmity 
    sets.Enmity = {
		ammo="Sapience Orb",
		head="Halitus Helm",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		legs="Eri. Leg Guards +1",
		feet="Erilaz Greaves +1",
		neck="Unmoving Collar +1",
		waist="Flume Belt +1",
		left_ear="Odnowa Earring +1",
		right_ear="Cryptic Earring",
		left_ring="Supershear Ring",
		right_ring="Begrudging Ring",
		back="Reiki Cloak",
	}

    sets.precast.JA['Vallation'] = {}
    sets.precast.JA['Valiance'] = sets.precast.JA['Vallation']
    sets.precast.JA['Pflug'] = {}
    sets.precast.JA['Battuta'] = {}
    sets.precast.JA['Liement'] = {}

    sets.precast.JA['Lunge'] = {}
    sets.precast.JA['Swipe'] = sets.precast.JA['Lunge']
    sets.precast.JA['Gambit'] = {}
    sets.precast.JA['Rayke'] = {}
    sets.precast.JA['Elemental Sforzo'] = {}
    sets.precast.JA['Swordplay'] = {}
    sets.precast.JA['Vivacious Pulse'] = {}


    -- Precast
    sets.precast.FC = {
		ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Taeon Tabard", augments={'"Fast Cast"+3','Phalanx +3',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Aya. Cosciales +2",
		feet={ name="Taeon Boots", augments={'"Fast Cast"+5','Phalanx +2',}},
		neck="Voltsurge Torque",
		waist="Flume Belt +1",
		left_ear="Odnowa Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back="Reiki Cloak",
	}

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {})

    sets.precast.FC.Cure = set_combine(sets.precast.FC, {})

    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})

	-- Great Sword
    sets.precast.WS = {
	    ammo="Knobkierrie",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Ayanmo Corazza +2",
		hands="Meg. Gloves +2",
		legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Niqmaddu Ring",
		right_ring="Ilabrat Ring",
		back={ name="Evasionist's Cape", augments={'Enmity+6','"Embolden"+7','"Dbl.Atk."+1','Damage taken-1%',}},
	}

    sets.precast.WS.Acc = set_combine(sets.precast.WS, {})

    sets.precast.WS['Resolution'] = set_combine(sets.precast.WS, {})
    sets.precast.WS['Resolution'].Acc = set_combine(sets.precast.WS['Resolution'], {})


    sets.precast.WS['Dimidiation'] = set_combine(sets.precast.WS, {})
    sets.precast.WS['Dimidiation'].Acc = set_combine(sets.precast.WS['Dimidiation'], {})

    sets.precast.WS['Herculean Slash'] = sets.precast.JA['Lunge']
   
	sets.precast.WS['Shockwave'] = {}

    sets.precast.WS['Fell Cleave'] = set_combine(sets.precast.WS, {})

    sets.precast.WS['Upheaval'] = sets.precast.WS['Resolution']
    sets.precast.WS['Full Break'] = sets.precast.WS['Shockwave']

	-- Midcast
    sets.midcast.FastRecast = sets.precast.FC

    sets.midcast.SpellInterrupt = {} 

    sets.midcast.Cure = {}

    sets.midcast['Enhancing Magic'] = {}

    sets.midcast.EnhancingDuration = {}

    sets.midcast['Phalanx'] = set_combine(sets.midcast.SpellInterrupt, {
	    head="Futhark Bandeau", 
		body="Taeon Tabard", 
		hands="Taeon Gloves", 
		legs="Taeon Tights", 
		feet="Taeon Boots",
	})

    sets.midcast['Aquaveil'] = set_combine(sets.midcast['Enhancing Magic'], sets.midcast.SpellInterrupt, {})
    sets.midcast['Regen'] = set_combine(sets.midcast['Enhancing Magic'], {head="Rune. Bandeau +3"})
    sets.midcast.Refresh = set_combine(sets.midcast.EnhancingDuration, {head="Erilaz Galea +1", waist="Gishdubar Sash"})
    sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {})
    sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'], {ring2="Sheltered Ring"})
    sets.midcast.Shell = sets.midcast.Protect

    sets.midcast['Divine Magic'] = {}

    sets.midcast.Flash = sets.Enmity
    sets.midcast.Foil = sets.Enmity
    sets.midcast.Utsusemi = sets.midcast.SpellInterrupt

    sets.midcast['Blue Magic'] = {}
	sets.midcast['Blue Magic'].PDT = sets.defense.PDT
    sets.midcast['Blue Magic'].Enmity = sets.Enmity
    sets.midcast['Blue Magic'].Cure = sets.midcast.Cure
    sets.midcast['Blue Magic'].Buff = sets.midcast['Enhancing Magic']

	-- Idle
    sets.idle = {
	    ammo="Homiliary",
		head="Meghanada Visor +2",
		body="Meg. Cuirie +2",
		hands="Meg. Gloves +2",
		legs="Carmine Cuisses +1",
		feet="Meg. Jam. +2",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Odnowa Earring +1",
		right_ear="Odnowa Earring",
		left_ring="Defending Ring",
		right_ring="Warden's Ring",
		back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Parrying rate+5%',}},
	}

    sets.idle.DT = {}

    sets.idle.Town = set_combine(sets.idle, {})

    sets.idle.Weak = sets.idle.DT

	-- Defense
    sets.defense.Knockback = {}

    sets.defense.PDT = {    
		ammo="Staunch Tathlum",
		head="Meghanada Visor +2",
		body="Erilaz Surcoat +1",
		hands="Aya. Manopolas +2",
		legs="Eri. Leg Guards +1",
		feet="Erilaz Greaves +1",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Odnowa Earring +1",
		right_ear="Odnowa Earring",
		left_ring="Defending Ring",
		right_ring="Warden's Ring",
		back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Parrying rate+5%',}},
	}

    sets.defense.MDT = {
	    neck="Warder's Charm +1",
		waist="Carrier's Sash",
	}

	-- Engaged
    sets.engaged = {
		ammo="Coiste Bodhar",
	    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Ayanmo Corazza +2",
		hands={ name="Adhemar Wrist. +1", augments={'Accuracy+20','Attack+20','"Subtle Blow"+8',}},
		legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},		feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','"Triple Atk."+2','Attack+14',}},
		neck="Combatant's Torque",
		waist="Sarissapho. Belt",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Epona's Ring",
		back="Relucent Cape",
	}

    sets.engaged.Acc = set_combine(sets.engaged, {})

	-- Hybrid
    sets.engaged.DT = set_combine(sets.engaged, {})
    sets.engaged.Acc.DT = set_combine(sets.engaged.Acc, {})

    sets.Kiting = {legs="Carmine Cuisses +1"}
    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
    sets.Embolden = set_combine(sets.midcast.EnhancingDuration, {})
    sets.Obi = {waist="Hachirin-no-Obi"}
    sets.CP = {back="Mecisto. Mantle"}

end
