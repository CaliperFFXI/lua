function init_gear_sets()

	--place items here to be grabbed when //gs org is run. (requires Organizer)
	organizer_items = {
		shiromochi="Shiromochi",
		shihei="Shihei",
		reraiser="Reraiser",
		hireraiser="Hi-Reraiser",
		Chrono = "Chrono Bullet",
		Eradicating = "Eradicating Bullet",
		bolt = "Quelling Bolt",
		--animikii = "Animikii Bullet",
		Quiver="Quelling B. Quiver",
	}

    -- Precast sets to enhance JAs
    sets.precast.JA['Eagle Eye Shot'] = {legs="Arc. Braccae +3"}
    sets.precast.JA['Bounty Shot'] = {hands="Amini Glove. +1"}
    sets.precast.JA['Camouflage'] = {body="Orion Jerkin +3"}
    sets.precast.JA['Scavenge'] = {feet="Orion Socks +2"}
    sets.precast.JA['Shadowbind'] = {hands="Orion Bracers +3"}
    sets.precast.JA['Sharpshot'] = {legs="Orion Braccae +2"}

    -- Fast Cast 

    sets.precast.Waltz = {}
    sets.precast.Waltz['Healing Waltz'] = {}

    sets.precast.FC = {
		head="Carmine Mask +1",
		body=gear.Taeon_Body,
		hands="Leyline Gloves", 
		legs=gear.Taeon_Legs,
		feet=gear.Taeon_Feet,
		neck="Voltsurge Torque",
		left_ear="Loquac. Earring",
		left_ring="Weather. Ring",
		right_ring="Lebeche Ring",
	}

    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {body="Passion Jacket"})

	--Snapshot gear, do not include ammo in these sets.
    sets.precast.RA = {
		head=gear.Taeon_Head,
		body="Amini Caban +1",
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs="Adhemar Kecks",
		feet="Meg. Jam. +2",
		neck="Scout's gorget +1",
		waist="Impulse Belt",
		back=gear.RNG_Snapshot,
	} 
	
    sets.precast.RA.Flurry1 = set_combine(sets.precast.RA, {head="Orion Beret +3"})
    sets.precast.RA.Flurry2 = set_combine(sets.precast.RA.Flurry1, {feet="Arcadian Socks +3"}) 
   
    -- Weapon Specific Pre-Shot
	-- Gastraphetes
	sets.precast.RA.Gastraphetes = set_combine(sets.precast.RA, {})
	sets.precast.RA.Gastraphetes.Flurry1 = set_combine(sets.precast.RA.Gastraphetes, {
		head="Orion Beret +3",
		feet="Arcadian Socks +3",
	})
    sets.precast.RA.Gastraphetes.Flurry2 = set_combine(sets.precast.RA.Gastraphetes.Flurry1, {
		legs="Pursuer's Pants", 
	})

    -- Marksmanship
    sets.precast.WS = {
		head="Orion Beret +3",
		body={ name="Arc. Jerkin +3", augments={'Enhances "Snapshot" effect',}},
		hands="Meg. Gloves +2",
		legs={ name="Arc. Braccae +3", augments={'Enhances "Eagle Eye Shot" effect',}},
		feet="Arcadian Socks +3",
		neck={ name="Scout's Gorget +1", augments={'Path: A',}},
		waist="Yemaya Belt",
		left_ear="Enervating Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Dingir Ring",
		back=gear.RNG_AGI_WS,
	}
    sets.precast.WS.Acc = set_combine(sets.precast.WS, {})
   
	sets.precast.WS['Apex Arrow'] = sets.precast.WS
	sets.precast.WS['Apex Arrow'].Acc = set_combine(sets.precast.WS['Apex Arrow'], {})
    
	sets.precast.WS["Jishnu's Radiance"] = set_combine(sets.precast.WS, {
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Meg. Cuirie +2",
		hands="Mummu Wrists +2",
		legs="Jokushu Haidate",
		feet="Thereoid Greaves",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Odr Earring",
		right_ear="Sherida Earring",
		left_ring="Regal Ring",
		right_ring="Begrudging Ring",
		back=gear.RNG_DEX_WS,
	})
    sets.precast.WS['Jishnu\'s Radiance'].Acc = set_combine(sets.precast.WS['Jishnu\'s Radiance'], {})
    
	sets.precast.WS['Last Stand'] = set_combine(sets.precast.WS, {
		head="Orion Beret +3",
		body={ name="Arc. Jerkin +3", augments={'Enhances "Snapshot" effect',}},
		hands="Meg. Gloves +2",
		legs={ name="Arc. Braccae +3", augments={'Enhances "Eagle Eye Shot" effect',}},
		feet="Arcadian Socks +3",
		neck="Scout's Gorget +1",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Dingir Ring",
	})
	sets.precast.WS['Last Stand'].FullTP = set_combine(sets.precast.WS['Last Stand'], {})
	
    sets.precast.WS['Coronach'] = set_combine(sets.precast.WS['Last Stand'], {    
		right_ear="Sherida Earring",
	})
	sets.precast.WS['Coronach'].FullTP = set_combine(sets.precast.WS['Coronach'], {})


    sets.precast.WS['Trueflight'] = {
		head=gear.Herculean_Head_MAB,
		body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs={ name="Arc. Braccae +3", augments={'Enhances "Eagle Eye Shot" effect',}},
		feet=gear.Herculean_Feet_MAB,
		neck="Scout's gorget +1",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Weather. Ring",
		right_ring="Dingir Ring",
		back=gear.RNG_AGI_WS_Magic,
	}
	
	sets.precast.WS['Trueflight'].FullTP = set_combine(sets.precast.WS['Trueflight'], {right_ear="Hermetic Earring"})
	
    sets.precast.WS['Wildfire'] = set_combine(sets.precast.WS['Trueflight'], {})
	sets.precast.WS['Wildfire'].FullTP = set_combine(sets.precast.WS['Wildfire'], {})
	
	-- Archery
	sets.precast.WS['Apex Arrow'] = set_combine(sets.precast.WS, {
		--neck="Fotia Gorget",
		--waist="Fotia Belt",
		right_ear="Telos Earring",
	})
    sets.precast.WS['Apex Arrow'].Acc = set_combine(sets.precast.WS['Apex Arrow'], {})
	
	sets.precast.WS['Flaming Arrow'] = set_combine(sets.precast.WS, {
		head=gear.Herculean_Head_MAB,
		body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs={ name="Arc. Braccae +3", augments={'Enhances "Eagle Eye Shot" effect',}},
		feet=gear.Herculean_Feet_MAB,
		neck="Scout's gorget +1",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Weather. Ring",
		right_ring="Dingir Ring",	
		back=gear.RNG_AGI_WS_Magic,
	})
    sets.precast.WS['Flaming Arrow'].Acc = set_combine(sets.precast.WS['Flaming Arrow'], {})	

	-- Dagger	
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS['Trueflight'] ,{
		left_ring="Regal Ring",
		right_ring="Dingir Ring",
		back=gear.RNG_AGI_WS_Magic,
	})
	
	sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS, {})
    sets.precast.WS['Evisceration'].Acc = set_combine(sets.precast.WS['Evisceration'], {})
	
	-- Axe
    sets.precast.WS['Rampage'] = set_combine(sets.precast.WS['Evisceration'], {})
    sets.precast.WS['Rampage'].Acc = sets.precast.WS['Evisceration'].Acc
	
	-- Sword
	sets.precast.WS['Savage Blade'] = {
		ammo="Hauksbok Arrow",
		head="Orion Beret +3",
		body="Meg. Cuirie +2",
		hands="Meg. Gloves +2",
		legs={ name="Arc. Braccae +3", augments={'Enhances "Eagle Eye Shot" effect',}},
		feet="Meg. Jam. +2",
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Regal Ring",
		right_ring="Rufescent Ring",
		back=gear.RNG_STR_WS,
	}
	
	sets.precast.WS['Savage Blade'].FullTP = set_combine(sets.precast.WS['Savage Blade'], {})

	-- Midcast
    sets.midcast.FastRecast = sets.precast.FC

    sets.midcast.SpellInterrupt = {}

    sets.midcast.Utsusemi = sets.midcast.SpellInterrupt

    -- Ranged sets

    sets.midcast.RA = {
		head={ name="Arcadian Beret +3", augments={'Enhances "Recycle" effect',}},
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Iskur Gorget",
		waist="Yemaya Belt",
		left_ear="Dedition Earring",
		right_ear="Telos Earring",
		left_ring="Ilabrat Ring",
		right_ring="Regal Ring",
		back=gear.RNG_TP_Range,
	}

    sets.midcast.RA.Acc = set_combine(sets.midcast.RA, {
		body="Orion Jerkin +3",
		right_ring="Regal Ring",
		left_ear="Enervating Earring",
	})

    sets.DoubleShot = {
	    head="Arcadian Beret +3",
		body="Arcadian jerkin +3",
		hands="Oshosi Gloves",
		legs="Oshosi Trousers",
		feet="Oshosi Leggings",
	} 

    -- Idle sets
    sets.idle = {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Carrier's Sash",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring",
		back="Solemnity Cape",
	}

	sets.idle.Regen = set_combine(sets.idle, {
		head="Meghanada Visor +2",
		body="Meg. Cuirie +2",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Bathy Choker +1",
		waist="Flume Belt +1",
	})
	
    sets.idle.Town = set_combine(sets.idle, {legs="Carmine Cuisses +1"})
    sets.idle.Town.Regen = set_combine(sets.idle, sets.idle.Regen, {legs="Carmine Cuisses +1"})
	sets.idle.Field = set_combine(sets.idle, {legs="Carmine Cuisses +1"})
	sets.idle.Field.Regen = set_combine(sets.idle, sets.idle.Regen, {legs="Carmine Cuisses +1"})
	
	sets.idle.Craft = set_combine(sets.idle,sets.Craft, {legs="Carmine Cuisses +1"})
	sets.idle.Town.Craft = sets.idle.Craft
	sets.idle.Field.Craft = set_combine(sets.idle,sets.Craft)
	
	sets.idle.Fish = set_combine(sets.idle,sets.Fish)
	sets.idle.Town.Fish = sets.idle.Fish
	sets.idle.Field.Fish = sets.idle.Fish
	
	-- Defense Sets 
    sets.defense.PDT = {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Carrier's Sash",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Reiki Cloak",
	}
	
    sets.defense.MDT = set_combine(sets.defense.PDT, {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Meg. Gloves +2",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Reiki Cloak",
	})

    -- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups

	--'Normal' Offense Mode
    sets.engaged = {
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands="Adhemar Wrist. +1",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','"Triple Atk."+2','Attack+14',}},
		neck="Anu Torque",
		waist="Windbuffet Belt +1",
		left_ear="Dedition Earring",
		right_ear="Sherida Earring",
		left_ring="Epona's Ring",
		right_ring="Petrov Ring",
		back=gear.RNG_TP_Melee,
	}
	sets.engaged.DualWield = set_combine(sets.engaged, {left_ear="Suppanomimi"})

	--'Acc' Offense Mode
    sets.engaged.Acc = set_combine(sets.engaged, {waist="Kentarch Belt +1"})
	sets.engaged.DualWield.Acc = set_combine(sets.engaged.Acc, {left_ear="Suppanomimi"})
	
	--'Hybrid' Modes
	sets.engaged.DT = set_combine(sets.engaged, {    
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist="Windbuffet Belt +1",
		right_ring="Defending Ring",
	})
	sets.engaged.Acc.DT = set_combine(sets.engaged.DT, {waist="Kentarch Belt +1"})
    sets.engaged.DualWield.DT = set_combine(sets.engaged.DT, {waist="Kentarch Belt +1",left_ear="Suppanomimi"})    
    sets.engaged.DualWield.Acc.DT = set_combine(sets.engaged.DualWield.DT, {})    

	-- Conditional Sets
    sets.buff.Barrage = set_combine(sets.midcast.RA.Acc,{
		hands="Orion Bracers +3", 
		legs={ name="Arc. Braccae +3"},
		left_ring="Cacoethic Ring +1",
	})
    sets.buff.Camouflage = {body="Orion Jerkin +3"}

    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
    sets.resting = {}
	sets.Kiting = {legs="Carmine Cuisses +1"}    
	sets.Obi = {waist="Hachirin-no-Obi"}
    sets.CP = {back="Mecisto. Mantle"}	
	sets.TreasureHunter = {body=gear.Herculean_Body_TH,waist="Chaac Belt",feet="Volte Boots",}
	
	-- CombatWeapon Sets
	sets.Gastraphetes = {main="Malevolence",sub="Malevolence",range="Gastraphetes",ammo="Quelling Bolt"}
	sets.Annihilator = {main="Kustawi +1",sub="Nusku Shield",range="Annihilator",ammo="Eradicating Bullet"}
	sets.Fomalhaut = {main="Kustawi +1",sub="Nusku Shield",range="Fomalhaut",ammo="Eradicating Bullet"}
	sets.Gandiva = {main="Kustawi +1",sub="Nusku Shield",range="Gandiva",ammo="Chrono Arrow"}
	sets.FailNot = {main="Kustawi +1",sub="Nusku Shield",range="Fail-Not",ammo="Chrono Arrow"}
	sets.TpBonus = {main="Naegling",sub="Ternion Dagger +1",range="Sparrowhawk +2",ammo="Chrono Arrow"}
	
end
