-- Original: Motenten / Arislan Modified: Caliper -of- Asura 
-- File Version 1.0 rev 0

function init_gear_sets()

    sets.precast.JA['Tabula Rasa'] = {}
    sets.precast.JA['Enlightenment'] = {}
    sets.precast.JA['Sublimation'] = {waist="Embla Sash"}

    sets.precast.FC = {
		ammo="Sapience Orb",
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		body="Merlinic Jubbah",
		hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','Song spellcasting time -3%',}},
		legs={ name="Telchine Braconi", augments={'"Fast Cast"+4','Enh. Mag. eff. dur. +10',}},
		feet="Regal Pumps +1",
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
	}

    sets.precast.FC.Grimoire = {head="Peda. M.Board +1"}
    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {})
    sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {})
    sets.precast.FC.Cure = set_combine(sets.precast.FC, {})
    sets.precast.FC.Curaga = sets.precast.FC.Cure
	sets.precast['Dispelga'] = set_combine(sets.precast.FC, {main="Daybreak"})
    sets.precast.FC.Impact = set_combine(sets.precast.FC, {})
    sets.precast.Storm = set_combine(sets.precast.FC, {})

    sets.precast.WS = {}

    sets.precast.WS['Omniscience'] = set_combine(sets.precast.WS, {})

    sets.precast.WS['Myrkr'] = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		hands="Telchine Gloves", 
		legs="Merlinic Shalwar", 
		feet="Arbatel Loafers +1",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Etiolation Earring",
		right_ear="Evans Earring",
		left_ring="Lebeche Ring",
		right_ring="Fortified Ring",
		back="Fi Follet Cape +1",
	} 

    sets.midcast.Cure = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Esper Stone +1",
		head={ name="Gende. Caubeen +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -3%',}},
		body={ name="Gende. Bilaut +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Song spellcasting time -4%',}},
		hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','Song spellcasting time -3%',}},
		legs="Assid. Pants +1",
		feet={ name="Gende. Galosh. +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','"Cure" potency +2%',}},
		neck="Loricate Torque +1",
		waist="Luminary Sash",
		left_ear="Eabani Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Lebeche Ring",
		back="Aurist's Cape +1",
	}

    sets.midcast.CureWeather = set_combine(sets.midcast.Cure, {
		main="Chatoyant Staff",
		sub="Mensch Strap +1",
		waist="Hachirin-no-Obi",
		back="Twilight Cape",
	})

    sets.midcast.Curaga = set_combine(sets.midcast.Cure, {})

    sets.midcast.StatusRemoval = {
		left_ring="Ephedra Ring",
		right_ring="Ephedra Ring",
	}

    sets.midcast.Cursna = set_combine(sets.midcast.StatusRemoval, {
		feet="Gende. Galosh. +1",
		neck="Malison Medallion",
	})

    sets.midcast['Enhancing Magic'] = {
		main="Gada",
	    sub="Ammurapi Shield",
		head=gear.Telchine_Head,
		body=gear.Telchine_Body,
		hands=gear.Telchine_Hands,
		legs=gear.Telchine_Legs,
		feet=gear.Telchine_Feet,
		waist="Embla Sash",
	}

    sets.midcast.Regen = set_combine(sets.midcast['Enhancing Magic'], {
		main="Bolelabunga",
		head="Arbatel Bonnet +1",
	})
	
    sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'], {right_ring="Sheltered Ring",})

    -- Magic Accuracy
    sets.midcast['Enfeebling Magic'] = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="C. Palug Crown",
		body="Jhakri Robe +2",
		hands="Regal Cuffs",
		legs="Chironic Hose",
		feet="Jhakri Pigaches +2",
		neck="Erra Pendant",
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back="Aurist's Cape +1",
	}

    sets.midcast['Dark Magic'] = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Magic burst dmg.+9%','CHR+5','Mag. Acc.+7','"Mag.Atk.Bns."+10',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst dmg.+8%','MND+9',}},
		neck="Erra Pendant",
		waist="Sacro Cord",
		left_ear="Malignance Earring",
		right_ear="Hermetic Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Izdubar Mantle",
	}

    sets.midcast.Drain = set_combine(sets.midcast['Dark Magic'], {
		left_ring="Evanescence Ring",
		right_ring="Archon Ring",
	})

    sets.midcast.Aspir = sets.midcast.Drain

    sets.midcast.Stun = set_combine(sets.midcast['Dark Magic'], {})

    -- Elemental Magic
    sets.midcast['Elemental Magic'] = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Sacro Cord",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Jhakri Ring",
		back="Izdubar Mantle",
	}

    sets.midcast.Impact = set_combine(sets.midcast['Elemental Magic'], {})

    sets.midcast.Helix = set_combine(sets.midcast['Elemental Magic'], {})

    sets.midcast.DarkHelix = set_combine(sets.midcast.Helix, {head="Pixie Hairpin +1",right_ring="Archon Ring"})
    sets.midcast.Kaustra = sets.midcast.DarkHelix

    sets.midcast.LightHelix = set_combine(sets.midcast.Helix, {right_ring="Weatherspoon Ring"})

	-- Defense 
    sets.defense.PDT = {}
    sets.defense.MDT = set_combine(sets.defense.PDT, {})

	-- Idle
    sets.idle = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Homiliary",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
		left_ear="Ethereal Earring",
		right_ear="Etiolation Earring",
		left_ring="Shadow Ring",
		right_ring="Purity Ring",
		back="Solemnity Cape",
	}

    sets.idle.Town = set_combine(sets.idle, {feet="Herald's Gaiters"})

    sets.idle.Weak = set_combine(sets.idle, {})

    sets.resting = set_combine(sets.idle, {})

    sets.Kiting = {feet="Herald's Gaiters"}
	
    sets.latent_refresh = {waist="Fucho-no-Obi"}

    sets.engaged = {    
		main="Reikikon",
		sub="Flanged Grip",
		ammo="Homiliary",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Combatant's Torque",
		waist="Grunfeld Rope",
		left_ear="Telos Earring",
		right_ear="Brutal Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back="Relucent Cape",
	}

    sets.MagicBurst = {
		head="Nyame Helm",
		body="Nyame Mail",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Mizu. Kubikazari",
		left_ring="Locus Ring",
		right_ring="Mujin Band",
	}
	
    sets.buff['Ebullience'] = {head="Arbatel Bonnet +1"}
    sets.buff['Rapture'] = {head="Arbatel Bonnet +1"}
    sets.buff['Perpetuance'] = {hands="Arbatel Bracers +1"}
    sets.buff['Immanence'] = {back="Lugh's Cape"}
    sets.buff['Penury'] = {legs="Arbatel Pants +1"}
    sets.buff['Parsimony'] = {legs="Arbatel Pants +1"}
    --sets.buff['Celerity'] = {feet="Peda. Loafers +3"}
    --sets.buff['Alacrity'] = {feet="Peda. Loafers +3"}
    sets.buff['Klimaform'] = {feet="Arbatel Loafers +1"}
	
    sets.buff.FullSublimation = {}

    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}

    sets.LightArts = {}
    sets.DarkArts = {}

	sets.TwilightCape = {back="Twilight Cape"}
	
    sets.Bookworm = {back="Bookworm's Cape"}
    sets.CP = {back="Mecisto. Mantle"}

end
