function init_gear_sets()

	--place items here to be grabbed when //gs org is run. (requires Organizer)
	organizer_items = {
		echos="Echo Drops",
	}

    -- Precast sets to enhance JAs
    sets.precast.JA.Bolster = {body="Bagua Tunic"}
    sets.precast.JA['Full Circle'] = {head="Azimuth Hood +1"}
    --sets.precast.JA['Life Cycle'] = {body="Geomancy Tunic"}
	sets.precast.JA['Radial Arcana'] = {feet="Bagua Sandals +1"}

    -- Fast cast sets for spells
    sets.precast.FC = {
		main="C. Palug Hammer",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		hands=gear.Telchine_Hands,
		legs=gear.Telchine_Legs,
		feet="Regal Pumps +1",
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Malignance Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back="Lifestream Cape",
	}

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {})

	-- Precast for Elemental magic
    sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {})

    sets.precast.FC.Cure = set_combine(sets.precast.FC, {sub="Sors Shield",left_ear="Mendi. Earring"})

    sets.precast.FC.Curaga = sets.precast.FC.Cure
    sets.precast.FC.Impact = set_combine(sets.precast.FC, {})

    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {}

    sets.precast.WS['Hexastrike'] = set_combine(sets.precast.WS, {})

    sets.precast.WS['Exudation'] = sets.precast.WS['Hexastrike']


    -- Base fast recast for spells
    sets.midcast.FastRecast = sets.precast.FC 

	sets.midcast.Geomancy = {  
		--main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Azimuth Coat +1",
		hands="Geo. Mitaines +1",
		legs="Nyame Flanchard",
		feet="Herald's Gaiters",
		neck="Loricate Torque +1",
		waist="Luminary Sash",
		left_ear="Mendi. Earring",
		right_ear="Genmei Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Solemnity Cape",
	}

    sets.midcast.Geomancy.Indi = set_combine(sets.midcast.Geomancy, {})

    sets.midcast.Cure = {
		main="Daybreak",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		body="Azimuth Coat +1",
		hands={ name="Telchine Gloves", augments={'"Fast Cast"+5','Enh. Mag. eff. dur. +9',}},
		legs="Nyame Flanchard",
		feet="Regal Pumps +1",
		neck="Loricate Torque +1",
		waist="Luminary Sash",
		left_ear="Mendi. Earring",
		right_ear="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Solemnity Cape",
	} 

    sets.midcast.Curaga = set_combine(sets.midcast.Cure, {})

    sets.midcast.Cursna = set_combine(sets.midcast.FastRecast, {
		neck="Malison Medallion",
		left_ring="Ephedra Ring",
		right_ring="Ephedra Ring",
	})

    sets.midcast['Enhancing Magic'] = {
		sub="Ammurapi shield",
		head=gear.Telchine_Head,
		body=gear.Telchine_Body,
		hands=gear.Telchine_Hands,
		legs=gear.Telchine_Legs,
		feet=gear.Telchine_Feet,
		waist="Embla Sash",
	}

    sets.midcast.Enfeeble = {
		main="Daybreak",
		sub="Ammurapi Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="C. Palug Crown",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Skaoi Boots",
		neck="Erra Pendant",
		waist="Luminary Sash",
		left_ear="Digni. Earring",
		right_ear="Regal Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back="Aurist's Cape +1",
	} -- MND/Magic accuracy

    sets.midcast['Dark Magic'] = {
		main="Daybreak",
		sub="Ammurapi Shield",
		head="Pixie Hairpin +1",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +1",
		neck="Erra Pendant",
		waist="Eschan Stone",
		left_ear="Digni. Earring",
		left_ring="Evanescence Ring",
		right_ring="Archon Ring",
	}

    sets.midcast.Drain = set_combine(sets.midcast['Dark Magic'], {waist="Fucho-no-Obi",})

    sets.midcast.Aspir = sets.midcast.Drain

    sets.midcast.Stun = set_combine(sets.midcast['Dark Magic'], {})

    -- Elemental Magic sets

    sets.midcast['Elemental Magic'] = {
		main="Daybreak",
		sub="Ammurapi Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="C. Palug Crown",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring="Jhakri Ring",
		back="Aurist's Cape +1",
	}

    sets.midcast.GeoElem = set_combine(sets.midcast['Elemental Magic'], {})

    sets.midcast.GeoElem.Seidr = set_combine(sets.midcast['Elemental Magic'].Seidr, {})

    sets.midcast.Impact = set_combine(sets.midcast['Elemental Magic'], {})

    -- Initializes trusts at iLvl 119
    sets.midcast.Trust = sets.precast.FC

	-- Idle Sets
    sets.idle = {
		main="Daybreak",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Mallquis Saio +2",
		hands="Geo. Mitaines +1",
		legs="Nyame Flanchard",
		feet="Volte Boots",
		neck="Loricate Torque +1",
		waist="Carrier's Sash",
		left_ear="Ethereal Earring",
		right_ear="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Solemnity Cape",
	}

    sets.resting = set_combine(sets.idle, {})

    sets.idle.Refresh = set_combine(sets.idle, {body="Jhakri Robe +2",})

    -- .Pet sets are for when Luopan is present.
	sets.idle.Pet = set_combine(sets.idle, {   
		feet="Bagua Sandals +1",
		waist="Isa Belt",
		left_ear="Handler's Earring +1",
		right_ear="Handler's Earring",
		back="Lifestream Cape",
	})

    sets.idle.Refresh.Pet = set_combine(sets.idle.Pet, {body="Jhakri Robe +2"})

    sets.PetHP = {}

    --Indi sets are for when an Indi-spell is active.
    --sets.idle.Indi = set_combine(sets.idle, {})
    --sets.idle.Pet.Indi = set_combine(sets.idle.Pet, {})
    --sets.idle.DT.Indi = set_combine(sets.idle.DT, {})
    --sets.idle.DT.Pet.Indi = set_combine(sets.idle.DT.Pet, {})

    sets.idle.Town = set_combine(sets.idle, {feet="Herald's Gaiters"})

    -- Defense sets

    sets.defense.PDT = sets.idle.DT
    sets.defense.MDT = sets.idle.DT

    sets.Kiting = {feet="Herald's Gaiters"}

    sets.latent_refresh = {waist="Fucho-no-Obi"}

    --------------------------------------
    -- Engaged sets
    --------------------------------------

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion

    -- Normal melee group
    sets.engaged = {}

    --------------------------------------
    -- Custom buff sets
    --------------------------------------

    sets.magic_burst = {
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		neck="Mizu. Kubikazari",
		right_ring="Mujin Band",
    }

    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
    sets.Obi = {waist="Hachirin-no-Obi"}
    sets.CP = {back="Mecisto. Mantle"}

end
