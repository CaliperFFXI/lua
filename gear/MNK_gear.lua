-- Define sets and vars used by this job file.
function init_gear_sets()

	--place items here to be grabbed when //gs org is run. (requires Organizer)
	organizer_items = {
		segomos="Segomo's Mantle", -- work around for augment value bug.
	}

	sets.Enmity = {
		ammo="Sapience Orb",
		head="Halitus Helm",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		legs="Obatala Subligar",
		neck="Unmoving Collar +1",
		waist="Moonbow Belt +1",
		left_ear="Cryptic Earring",
		right_ear="Friomisi Earring",
		left_ring="Petrov Ring",
		right_ring="Begrudging Ring",
		back="Reiki Cloak",
	}

    --------------------------------------
    -- Start defining the sets
    --------------------------------------
    -- Precast Sets
    -- Precast sets to enhance JAs on use
    sets.precast.JA['Hundred Fists'] = {legs="Hes. Hose +3",}
    sets.precast.JA['Boost'] = {hands="Anchorite's Gloves +3",waist="Ask Sash",}
    sets.precast.JA['Dodge'] = {feet="Anchorite's Gaiters +3"}
    sets.precast.JA['Focus'] = {head="Anch. Crown +2"}
    sets.precast.JA['Counterstance'] = {}
    sets.precast.JA['Footwork'] = {feet="Shukuyu Sune-Ate"}
    sets.precast.JA['Formless Strikes'] = {}
    sets.precast.JA['Mantra'] = {}
    sets.precast.JA['Chi Blast'] = {head="Hes. Crown +3"}
    sets.precast.JA['Chakra'] = {body="Anch. Cyclas +2"}
	
	-- /WAR JA
	sets.precast.JA['Provoke'] = sets.Enmity
	sets.precast.JA['Warcry'] = sets.Enmity
	sets.precast.JA['Defender'] = sets.Enmity
	
	--Define Impetus Body
	sets.Impetus = {body="Bhikku Cyclas +1"}
	
	--Define Footwork Set
	sets.Footwork = {  
		neck="Mnk. Nodowa +1",
		legs="Hes. Hose +3",
		feet="Anch. Gaiters +3",
	 }

    -- Fast cast sets for spells
    sets.precast.FC = {
	    ammo="Sapience Orb",
		head="Herculean Helm",
		body={ name="Taeon Tabard", augments={'"Fast Cast"+3',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		neck="Voltsurge Torque",
		left_ear="Loquac. Earring",
		right_ear="Etiolation Earring",
		left_ring="Lebeche Ring",
		right_ring="Weather. Ring",
	}

    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})
       
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {    
		ammo="Knobkierrie",
		head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
		body="Ken. Samue",
		hands="Adhemar Wrist. +1", 
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet=gear.HercFeetTP,
		neck="Mnk. Nodowa +1",
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back=gear.MNK_STR_WS,
	}

    sets.precast.WS['Raging Fists'] = set_combine(sets.precast.WS, {
		ammo="Knobkierrie",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands="Adhemar Wrist. +1", 
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','"Triple Atk."+2','Attack+14',}},
		neck="Mnk. Nodowa +1",
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Epona's Ring",
		right_ring="Niqmaddu Ring",
		back=gear.MNK_TP,
	})
	
    sets.precast.WS['Victory Smite'] = set_combine(sets.precast.WS['Raging Fists'], {
		ammo="Knobkierrie",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Ken. Samue",
		hands={ name="Adhemar Wrist. +1", augments={'Accuracy+20','Attack+20','"Subtle Blow"+8',}},
		legs="Ken. Hakama",
		feet="Ken. Sune-Ate",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back=gear.MNK_Crit,
	})
	
	sets.VictorySmite_Impetus = set_combine(sets.precast.WS['Victory Smite'],{
		body="Bhikku Cyclas +1",
		back=gear.MNK_STR_WS,
	})
	
    sets.precast.WS['Shijin Spiral'] = set_combine(sets.precast.WS, {
		ammo="Knobkierrie",
		head="Ken. Jinpachi",
		body="Adhemar Jacket +1",
		hands="Ken. Tekko",
		legs="Ken. Hakama",
		feet="Ken. Sune-Ate",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
		right_ear="Mache Earring +1",
		left_ring="Ilabrat Ring",
		right_ring="Niqmaddu Ring",
		back=gear.MNK_TP,
	})
	
	sets.precast.WS['Howling Fist'] = set_combine(sets.precast.WS, {
		ammo="Knobkierrie",
		head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
		body="Ken. Samue",
		hands="Anchor. Gloves +3",
		legs="Ken. Hakama",
		feet="Ken. Sune-Ate",
		neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back=gear.MNK_VIT_WS,
	})
	
	sets.precast.WS['Howling Fist'].FullTP = set_combine(sets.precast.WS['Howling Fist'], {
		right_ear="Brutal Earring",
	})
	
	sets.precast.WS['Tornado Kick'] = sets.precast.WS['Howling Fist']

    sets.precast.WS['Asuran Fists'] = sets.precast.WS['Raging Fists']

    sets.precast.WS["Ascetic's Fury"] = set_combine(sets.precast.WS, {})	
	
    sets.precast.WS['Dragon Kick'] = sets.precast.WS['Howling Fist']
		
    sets.precast.WS['Spinning Attack'] = set_combine(sets.precast.WS, {
		ammo="Knobkierrie",
		head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
		body="Ken. Samue",
		hands="Anchor. Gloves +3",
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet="Ken. Sune-Ate",
		neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back=gear.MNK_STR_WS,
	})

    sets.precast.WS['Cataclysm'] = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body=gear.Herculean_Body_TH,
		hands=gear.Herculean_Hands_WSD,
		legs=gear.Herculean_Legs_MAB,
		feet=gear.Herculean_Feet_MAB,
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Archon Ring",
		right_ring="Arvina Ringlet +1",
		back="Sacro Mantle",
	}

	sets.precast.WS['Shell Crusher'] = {
	    ammo="Pemphredo Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance tights",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Luminary Sash",
		left_ear="Digni. Earring",
		right_ear="Hermetic Earring",
		left_ring="Weather. Ring",
		right_ring="Regal Ring",
		back="Sacro Mantle",
	}
    
    -- Midcast Sets
    sets.midcast.FastRecast = {}
        
    -- Specific spells
    sets.midcast.Utsusemi = {}

    -- Idle and Resting sets
    
    -- Resting sets
    sets.resting = {}
    
    -- Idle sets
    sets.idle = {
		ammo="Staunch Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Moonbow Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Purity Ring",
		back="Solemnity Cape",
	}
	
    sets.idle.Town = set_combine(sets.idle, {feet="Herald's gaiters"})
	
	sets.idle.Field = sets.idle.Town
    
    sets.idle.Weak = {}
    
    -- Defense sets
    sets.defense.PDT = {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		left_ring="Defending Ring",
	}
    sets.defense.MDT = set_combine(sets.defense.PDT, {
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
	})

    -- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups
	
	-- Normal melee sets
    sets.engaged = {    
		ammo="Ginsen",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Ken. Samue",
		hands="Adhemar Wrist. +1", 
--		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
--		feet=gear.Herculean_Feet_TP,
		legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
		feet="Anch. Gaiters +3",
		neck="Mnk. Nodowa +1",
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",                          
		right_ear="Telos Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back=gear.MNK_TP,
	}
	
	-- Offense Mode 'Acc'
    sets.engaged.Acc = set_combine(sets.engaged, {
		ammo="Falcon Eye",
	})
	
	-- Offense Mode 'Crit'
	sets.engaged.Crit = set_combine(sets.engaged, {
		ammo="Falcon Eye",
		head="Ken. Jinpachi",
		body="Ken. Samue",
		hands="Ken. Tekko",
		legs="Ken. Hakama",
		feet="Ken. Sune-Ate",
		neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
		right_ear="Odr Earring",
		left_ring="Epona's Ring",
		right_ring="Niqmaddu Ring",
	})
	
	-- Hybrid Mode 'DT'
	sets.engaged.DT = set_combine(sets.engaged, {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		left_ring="Defending Ring",
	})
	sets.engaged.Acc.DT = set_combine(sets.engaged.Acc, {})
	sets.engaged.Crit.DT = set_combine(sets.engaged.Crit, {})
	
	-- Hybrid mode 'Counter'
	sets.engaged.Counter = set_combine(sets.engaged, {})
	sets.engaged.Acc.Counter = set_combine(sets.engaged.Acc, {})
	sets.engaged.Crit.Counter = set_combine(sets.engaged.Crit, {})
	-- CombatWeapon Godhands
	sets.engaged.Godhands = set_combine(sets.engaged, {right_ear="Mache Earring +1"})
	sets.engaged.Godhands.Acc = set_combine(sets.engaged.Acc, {})
	sets.engaged.Godhands.Crit = set_combine(sets.engaged.Godhands, sets.engaged.Crit, {})
	sets.engaged.Godhands.DT = set_combine(sets.engaged.Godhands, sets.engaged.DT)
	-- CombatWeapon Verethragna 
	sets.engaged.Verethragna = set_combine(sets.engaged, {})
	sets.engaged.Verethragna.Acc = set_combine(sets.engaged.Acc, {})
	sets.engaged.Verethragna.Crit = set_combine(sets.engaged.Verethragna, sets.engaged.Crit, {})
	sets.engaged.Verethragna.DT = set_combine(sets.engaged.Verethragna, sets.engaged.DT)
	-- CombatWeapon Spharai
	sets.engaged.Spharai = set_combine(sets.engaged, {right_ear="Mache Earring +1"})
	sets.engaged.Spharai.Acc = set_combine(sets.engaged.Acc, {})
	sets.engaged.Spharai.Crit = set_combine(sets.engaged.Spharai, sets.engaged.Crit, {})
	
	-- Conditional Sets
	-- Equipped if you are Doomed
    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
	-- Equipped for Weapon skills if tp is @3000
	sets.FullTP = {right_ear="Ishvara Earring"}	
	-- Equipped when TH mode is set to 'Tag' for first melee round
    sets.TreasureHunter = {body=gear.Herculean_Body_TH, waist="Chaac belt", feet="Volte Boots"}
	-- Equipped when boost is active for all states excluding midcast, and Aftercast.
	sets.AskSash = {waist="Ask Sash"}
	-- Movement Speed item for toggle 'Kiting'
    sets.Kiting = {feet="Herald's Gaiters"}
	-- Mache Earring 'recommended for slower knuckles '
	sets.Mache = {right_ear="Mache Earring +1"}
	
	sets.Godhands = {main="Godhands"}
	-- sets.Karambit = {main="Karambit"}
	sets.Verethragna = {main="Verethragna"}
	sets.Staff = {main="Reikikon", sub="Flanged Grip"}
	
end