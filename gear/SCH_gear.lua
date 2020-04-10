-- Define sets and vars used by this job file.
function init_gear_sets()

    -- Precast sets to enhance JAs
    sets.precast.JA['Tabula Rasa'] = {}
    sets.precast.JA['Enlightenment'] = {}
    sets.precast.JA['Sublimation'] = {}

    -- Fast cast sets for spells
    sets.precast.FC = {
		ammo="Sapience Orb",
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		body="Shango Robe",
		hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','Song spellcasting time -3%',}},
		legs={ name="Telchine Braconi", augments={'"Fast Cast"+4','Enh. Mag. eff. dur. +10',}},
		feet="Regal Pumps +1",
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back="Swith Cape",
	}

    sets.precast.FC.Grimoire = {}
    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {})
    sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {})

    sets.precast.FC.Cure = set_combine(sets.precast.FC, {})

    sets.precast.FC.Curaga = sets.precast.FC.Cure
    sets.precast.FC.Impact = set_combine(sets.precast.FC, {})
    sets.precast.Storm = set_combine(sets.precast.FC, {ring2={},})


    ------------------------------------------------------------------------------------------------
    ------------------------------------- Weapon Skill Sets ----------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.precast.WS = {}

    sets.precast.WS['Omniscience'] = set_combine(sets.precast.WS, {})

    sets.precast.WS['Myrkr'] = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body="Shango Robe",
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

    sets.midcast.FastRecast = sets.precast.FC

    sets.midcast.Cure = {
		ammo="Pemphredo Tathlum",
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		body="Arbatel Gown +1",
		hands="Arbatel Bracers +1",
		legs="Assid. Pants +1",
		feet={ name="Chironic Slippers", augments={'"Dbl.Atk."+2','INT+9','"Refresh"+1',}},
		neck="Incanter's Torque",
		waist="Luminary Sash",
		left_ear="Gifted Earring",
		right_ear="Mendi. Earring",
		left_ring="Lebeche Ring",
		right_ring="Persis Ring",
		back="Aurist's Cape +1",
	}

    sets.midcast.CureWeather = set_combine(sets.midcast.Cure, {waist="Hachirin-no-Obi"})

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
		head="Arbatel Bonnet +1",
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +7',}},
		feet="Regal Pumps +1",
		waist="Olympus Sash",
		right_ear="Andoaa Earring",
		back="Fi Follet Cape +1",
	}

    sets.midcast.EnhancingDuration = {
		main="Bolelabunga",
	    sub="Ammurapi Shield",
		head=gear.Telchine_Head,
		body=gear.Telchine_Body,
		hands=gear.Telchine_Hands,
		legs=gear.Telchine_Legs,
		feet=gear.Telchine_Feet,
	}

    sets.midcast.Regen = set_combine(sets.midcast.EnhancingDuration, {back="Lugh's Cape"})
    sets.midcast.RegenDuration = set_combine(sets.midcast.EnhancingDuration, {back="Lugh's Cape"})
    sets.midcast.Haste = sets.midcast.EnhancingDuration
    sets.midcast.Refresh = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.Stoneskin = set_combine(sets.midcast.EnhancingDuration, {waist="Siegel Sash",})
    sets.midcast.Aquaveil = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.Storm = sets.midcast.EnhancingDuration
    sets.midcast.Stormsurge = set_combine(sets.midcast.Storm, {})
    sets.midcast.Protect = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.Protectra = sets.midcast.Protect
    sets.midcast.Shell = sets.midcast.Protect
    sets.midcast.Shellra = sets.midcast.Shell
	sets.midcast.Klimaform = sets.midcast.EnhancingDuration

    -- Magic Accuracy
    sets.midcast.MndEnfeebles = {
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Chironic Hose",
		feet="Jhakri Pigaches +1",
		neck="Erra pendant",
		waist="Luminary Sash",
		left_ear="Digni. Earring",
		right_ear="Regal Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back="Fi Follet Cape +1",
	}

    sets.midcast.IntEnfeebles = set_combine(sets.midcast.MndEnfeebles, {})

    sets.midcast.ElementalEnfeeble = sets.midcast.IntEnfeebles

    sets.midcast['Dark Magic'] = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body="Shango Robe",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Magic burst dmg.+10%','INT+10',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25','Magic burst dmg.+8%','CHR+5','"Mag.Atk.Bns."+15',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Barkaro. Earring",
		right_ear="Friomisi Earring",
		left_ring="Weather. Ring",
		right_ring="Archon Ring",
		back="Bookworm's Cape",
	}

    sets.midcast.Kaustra = {}

    sets.midcast.Drain = set_combine(sets.midcast['Dark Magic'], {
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25','Magic burst dmg.+8%','CHR+5','"Mag.Atk.Bns."+15',}},
		left_ring="Evanescence Ring",
		right_ring="Archon Ring",
	})

    sets.midcast.Aspir = sets.midcast.Drain

    sets.midcast.Stun = set_combine(sets.midcast['Dark Magic'], {})

    -- Elemental Magic
    sets.midcast['Elemental Magic'] = {
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Mujin Band",
		back="Aurist's Cape +1",
	}

    sets.midcast['Elemental Magic'].Seidr = set_combine(sets.midcast['Elemental Magic'], {})

    sets.midcast['Elemental Magic'].Resistant = set_combine(sets.midcast['Elemental Magic'], {})

    sets.midcast.Impact = set_combine(sets.midcast['Elemental Magic'], {})

    sets.midcast.Helix = set_combine(sets.midcast['Elemental Magic'], {})

    sets.midcast.DarkHelix = set_combine(sets.midcast.Helix, {})

    sets.midcast.LightHelix = set_combine(sets.midcast.Helix, {})

    -- Initializes trusts at iLvl 119
    sets.midcast.Trust = sets.precast.FC

	-- Defense 
    sets.defense.PDT = sets.idle.DT
    sets.defense.MDT = sets.idle.DT

	-- Idle
    sets.idle = {
		ammo="Homiliary",
		head={ name="Gende. Caubeen +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -3%',}},
		body={ name="Gende. Bilaut +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Song spellcasting time -4%',}},
		hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','Song spellcasting time -3%',}},
		legs={ name="Gende. Spats +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','Song recast delay -3',}},
		feet={ name="Gende. Galosh. +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','"Cure" potency +2%',}},
		neck="Loricate Torque +1",
		waist="Carrier's Sash",
		left_ear="Genmei Earring",
		right_ear="Lugalbanda Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Solemnity Cape",
	}


    sets.idle.Town = set_combine(sets.idle, {feet="Herald's Gaiters"})

    sets.idle.Weak = sets.idle.DT

    sets.resting = set_combine(sets.idle, {})


    sets.Kiting = {feet="Herald's Gaiters"}
    sets.latent_refresh = {waist="Fucho-no-Obi"}


    sets.engaged = {}


    sets.magic_burst = {
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
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

    sets.Obi = {waist="Hachirin-no-Obi"}
    sets.Bookworm = {back="Bookworm's Cape"}
    sets.CP = {back="Mecisto. Mantle"}

end
