function init_gear_sets()

	--place items here to be grabbed when //gs org is run. (requires Organizer)
	organizer_items = {
		echos="Echo Drops",
		shiromochi="Shiromochi",
		akamochi="Akamochi",
		kusamochi="Kusamochi",
		grapdaifuku="Grape Daifuku",
		Maze="Maze Tabula M01",
	}
    
	--Spell Interruption Rate Down
	sets.SIRD = {    
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		left_ring="Freke Ring",
		right_ring="Evanescence Ring",
	}
	
	-- Precast sets to enhance JAs
    sets.precast.JA['Astral Flow'] = {}
    
    sets.precast.JA['Elemental Siphon'] = {	    
		main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
		sub="Vox Grip",
		ammo="Esper Stone +1",
		head="Beckoner's Horn +1",
		body="Beck. Doublet +1",
		hands="Lamassu Mitts +1",
		legs="Beck. Spats +1",
		feet="Beck. Pigaches +1",
		neck="Incanter's Torque",
		waist="Lucidity Sash",
		left_ear="Andoaa Earring",
		right_ear="C. Palug Earring",
		left_ring="Evoker's Ring",
		right_ring="Defending Ring",
		back=gear.BPdelayCape,
	}

    sets.precast.JA['Mana Cede'] = {}

    -- Pact delay reduction gear
    sets.precast.BloodPactWard = {
		main="Espiritus",
		ammo="Sancus Sachet +1",
		head="Beckoner's Horn +1",
		body="Con. Doublet +3",
		neck="Incanter's Torque",
		waist="Lucidity Sash",
		left_ring="Evoker's Ring",
		left_ear="Andoaa Earring",
		right_ear="C. Palug Earring",
		back=gear.BPdelayCape,
	}

    sets.precast.BloodPactRage = sets.precast.BloodPactWard
	sets.precast.HybridBloodPactRage = sets.precast.BloodPactWard

    -- Fast Cast --
    sets.precast.FC = {
		ammo="Sapience Orb",
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		body="Inyanga Jubbah +2",
		hands={ name="Telchine Gloves", augments={'"Fast Cast"+5','Enh. Mag. eff. dur. +9',}},
		legs={ name="Lengo Pants", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Refresh"+1',}},
		feet="Regal Pumps +1",
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Malignance Earring",
		left_ring="Lebeche Ring",
		right_ring="Weather. Ring",
		back=gear.BPcapeMagical,
	}

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {})

    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {}

    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Myrkr'] = {
		head="Beckoner's Horn +1",
		body="Beck. Doublet +1",
		hands="Convo. Bracers +3",
		legs="Beck. Spats +1",
		feet="Beck. Pigaches +1",
		neck="Sanctity Necklace",
		waist="Luminary Sash",
		left_ear="Etiolation Earring",
		right_ring="Persis Ring",
		back="Fi Follet Cape +1",
	}
	
	sets.precast.WS['Shattersoul'] = {}             

	sets.precast.WS['Garland of Bliss'] = {
		ammo="Pemphredo Tathlum",
		head="C. Palug Crown",
		body="Merlinic Jubbah",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Merlinic Shalwar",
		feet="Merlinic Crackows",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hermetic Earring",
		left_ring="Weather. Ring",
		right_ring="Arvina Ringlet +1",
		back="Aurist's Cape +1",
	}


    -- Midcast sets --
    sets.midcast.FastRecast = {}

    sets.midcast.Cure = {
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		hands={ name="Telchine Gloves", augments={'"Fast Cast"+5',}},
		waist="Luminary Sash",
		left_ear="Mendi. Earring",
		right_ear="Gifted Earring",
		right_ring="Lebeche Ring",
		back="Solemnity Cape",
	}

	sets.midcast.EnhancingDuration =  {
	    main="Bolelabunga",
	    sub="Ammurapi Shield",
		head=gear.Telchine_Head,
		body=gear.Telchine_Body,
		hands=gear.Telchine_Hands,
		legs=gear.Telchine_Legs,
		feet=gear.Telchine_Feet,
		waist="Embla Sash",
    }

    sets.midcast['Enhancing Magic'] = sets.midcast.EnhancingDuration

    sets.midcast['Elemental Magic'] = {}
	
	sets.midcast['Enfeebling Magic'] = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="C. Palug Crown",
		body="Inyanga Jubbah +2",
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Inyan. Crackows +2",
		neck="Erra Pendant",
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Digni. Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back="Aurist's Cape +1",
	}
	
	sets.midcast['Summoning Magic'] = sets.SIRD

    sets.midcast['Dark Magic'] = {}

	-- Max Skill and/or Blood Boon for Ward durations.
    sets.midcast.Pet.BloodPactWard = {
		main="Espiritus",
		sub="Vox Grip",
		ammo="Esper Stone +1",
		head="Beckoner's Horn +1",
		body="Beck. Doublet +1",
		hands="Lamassu Mitts +1",
		legs="Beck. Spats +1",
		feet="Beck. Pigaches +1",
		neck="Incanter's Torque",
		waist="Lucidity Sash",
		left_ear="Andoaa Earring",
		right_ear="C. Palug Earring",
		left_ring="Stikini Ring",
		right_ring="Evoker's Ring",
		back=gear.BPdelayCape,
	}

	-- Avatar: Magic Accuracy 
    sets.midcast.Pet.DebuffBloodPactWard = {
		main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
		sub="Vox Grip",
		ammo="Sancus Sachet +1",
		head="C. Palug Crown",
		body="Con. Doublet +3",
		hands="Convo. Bracers +3",
		legs={ name="Enticer's Pants", augments={'MP+50','Pet: Accuracy+15 Pet: Rng. Acc.+15','Pet: Mag. Acc.+15','Pet: Damage taken -5%',}},
		feet="Convo. Pigaches +3",
		neck="Smn. Collar +1",
		waist="Incarnation Sash",
		left_ear="Enmerkar Earring",
		right_ear="Lugalbanda Earring",
		left_ring="Evoker's Ring",
		right_ring="C. Palug Ring",
		back=gear.BPcapeMagical,
	}
    
    sets.midcast.Pet.DebuffBloodPactWard.Acc = set_combine(sets.midcast.Pet.DebuffBloodPactWard,{})
		
    -- Ifrit Specific Set ... Flaming Crush
	sets.midcast.Pet.HybridBloodPactRage = {       
		main="Nirvana",
		sub="Elan Strap",
		ammo="Sancus Sachet +1",
		head="C. Palug Crown",
		body="Con. Doublet +3",
		hands=gear.MagMerlinic,
		legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
		feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
		neck="Smn. Collar +1",
		waist="Regal Belt",
		left_ear="Gelos Earring",
		right_ear="Lugalbanda Earring",
		left_ring="Varar Ring +1",
		right_ring="C. Palug Ring",
		back=gear.BPcapeMagical,
	}
	
	sets.midcast.Pet.HybridBloodPactRage.Acc = set_combine(sets.midcast.Pet.HybridBloodPactRage, {})
	    
    sets.midcast.Pet.PhysicalBloodPactRage = {
		main="Nirvana",
		sub="Elan Strap",
		ammo="Sancus Sachet +1",
		head={ name="Helios Band", augments={'Pet: Accuracy+30 Pet: Rng. Acc.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+6',}},
		body="Con. Doublet +3",
		hands="Convo. Bracers +3",
		legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
		feet={ name="Helios Boots", augments={'Pet: Accuracy+24 Pet: Rng. Acc.+24','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+6',}},
		neck="Smn. Collar +1",
		waist="Incarnation Sash",
		left_ear="Gelos Earring",
		right_ear="Lugalbanda Earring",
		left_ring="Varar Ring +1",
		right_ring="C. Palug Ring",
		back=gear.BPcapePhysical,
	}

    sets.midcast.Pet.PhysicalBloodPactRage.Acc = set_combine(sets.midcast.Pet.PhysicalBloodPactRage, {
	    feet="Convo. Pigaches +3",
	})
	
    sets.midcast.Pet.MagicalBloodPactRage = {
		main=gear.Grioavolr,
		sub="Elan Strap",
		ammo="Sancus Sachet +1",
		head="C. Palug Crown",
		body="Con. Doublet +3",
		hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+20 Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+10','Pet: STR+6','Pet: Mag. Acc.+15',}},
		legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
		feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
		neck="Smn. Collar +1",
		waist="Regal Belt",
		left_ear="Gelos Earring",
		right_ear="Lugalbanda Earring",
		left_ring="Varar Ring +1",
		right_ring="C. Palug Ring",
		back=gear.BPcapeMagical,
	}

    sets.midcast.Pet.MagicalBloodPactRage.Acc = set_combine(sets.midcast.Pet.MagicalBloodPactRage, {})
	
	--Merit Blood pact sets. Favor Enticers < 1500 TP
	sets.midcast.Pet.MeritBloodPactRage = set_combine(sets.midcast.Pet.MagicalBloodPactRage, {legs="Enticer's Pants"})
	
	sets.midcast.Pet.MeritBloodPactRage.Acc = set_combine(sets.midcast.Pet.MeritBloodPactRage,{})
   
   -- Spirits cast magic spells, which can be identified in standard ways.
    sets.midcast.Pet.WhiteMagic = {}
    
    sets.midcast.Pet['Elemental Magic'] = set_combine(sets.midcast.Pet.BloodPactRage, {})

    sets.midcast.Pet['Elemental Magic'].Resistant = {}
    
    -- Idle Sets --
	
    sets.resting = {}
    
	
	-- Parent idle set
	sets.idle = {
		main="Nirvana",
		sub="Elan Strap",
		ammo="Sancus Sachet +1",
		head="Beckoner's Horn +1",
		body="Shomonjijoe +1",
		hands="Asteria Mitts +1",
		legs="Assid. Pants +1",
		feet="Convo. Pigaches +3",
		neck="Loricate Torque +1",
		waist="Regal Belt",
		left_ear="Genmei Earring",
		right_ear="C. Palug Earring",
		right_ring="Gelatinous Ring +1",
		left_ring="Defending Ring",
		back="Solemnity Cape",
	}

	sets.defense.PDT = set_combine(sets.idle,{
	})
    
	sets.defense.MDT = set_combine(sets.idle,{
	    ammo="Sancus Sachet +1",
		head="Inyanga Tiara +2",
		body="Inyanga Jubbah +2",
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
	})
	
    sets.idle.Town = set_combine(sets.idle,{feet="Herald's Gaiters"})
    sets.idle.Town.Craft = set_combine(sets.Craft,{feet="Herald's Gaiters"})
	
	sets.idle.Fish = set_combine(sets.Fish, {})
	sets.idle.Town.Fish = set_combine(sets.Fish, {})
	
    sets.Kiting = {feet="Herald's Gaiters"}

    -- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups

    sets.engaged = {}
	
    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
    sets.latent_refresh = {waist="Fucho-no-obi"}
	
end