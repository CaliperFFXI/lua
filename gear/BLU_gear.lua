function init_gear_sets()

	organizer_items = {
		echos="Echo Drops",
		holywater="Holy Water",
	}
	
    --sets.buff['Burst Affinity'] = {legs="Assim. Shalwar +3", feet="Hashi. Basmak +1"}
   -- sets.buff['Diffusion'] = {feet="Luhlaza Charuqs +3"}
  --  sets.buff['Efflux'] = {legs="Hashishin Tayt +1"}

    --sets.precast.JA['Azure Lore'] = {hands="Luh. Bazubands +1"}
    --sets.precast.JA['Chain Affinity'] = {feet="Assim. Charuqs +1"}
    --sets.precast.JA['Convergence'] = {head="Luh. Keffiyeh +3"}
    --sets.precast.JA['Enchainment'] = {body="Luhlaza Jubbah +3"}

    sets.precast.FC = {
		ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Taeon Tabard", augments={'"Fast Cast"+3',}},
		hands="Leyline Gloves", 
		legs="Aya. Cosciales +2",
		feet={ name="Taeon Boots", augments={'"Fast Cast"+5',}},
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
	}

    --sets.precast.FC['Blue Magic'] = set_combine(sets.precast.FC, {body="Hashishin Mintan +1"})
    --sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})
    --sets.precast.FC.Cure = set_combine(sets.precast.FC, {ammo="Impatiens", ear1="Mendi. Earring"})

    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})

	-- Weapon Skill Sets.
    sets.precast.WS = {
        neck="Fotia Gorget",
        waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
    }

    sets.precast.WS.Acc = set_combine(sets.precast.WS, {})

    sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS, {
		ammo="Falcon Eye",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'Accuracy+20','Attack+20','"Subtle Blow"+8',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet="Thereoid Greaves",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Odr Earring",
		right_ear="Brutal Earring",
		left_ring="Ilabrat Ring",
		right_ring="Begrudging Ring",
		back="Relucent Cape",
	})

    sets.precast.WS['Chant du Cygne'].Acc = set_combine(sets.precast.WS['Chant du Cygne'], {})
    sets.precast.WS['Vorpal Blade'] = sets.precast.WS['Chant du Cygne']
    sets.precast.WS['Vorpal Blade'].Acc = sets.precast.WS['Chant du Cygne'].Acc
    sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
		ammo="Falcon Eye",
		head="Jhakri Coronal +2",
		body=gear.Herculean_Body_WS,
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet=gear.Herculean_Feet_WS,
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Ilabrat Ring",
		right_ring="Rufescent Ring",
		back="Sacro Mantle",
	})
    sets.precast.WS['Seraph Blade'] = set_combine(sets.precast.WS, {
	    body={ name="Cohort Cloak +1", augments={'Path: A',}},
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Sacro Cord",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Jhakri Ring",
		right_ring="Weather. Ring",
	})

    sets.precast.WS['Savage Blade'].Acc = set_combine(sets.precast.WS['Savage Blade'], {})
    sets.precast.WS['Requiescat'] = {}
    sets.precast.WS['Requiescat'].Acc = set_combine(sets.precast.WS['Requiescat'], {})
    sets.precast.WS['Expiacion'] = sets.precast.WS['Savage Blade']
    sets.precast.WS['Expiacion'].Acc = set_combine(sets.precast.WS['Expiacion'], {})
    sets.precast.WS['Sanguine Blade'] = {}
    sets.precast.WS['True Strike'] = sets.precast.WS['Savage Blade']
    sets.precast.WS['True Strike'].Acc = sets.precast.WS['Savage Blade'].Acc
    sets.precast.WS['Judgment'] = sets.precast.WS['True Strike']
    sets.precast.WS['Judgment'].Acc = sets.precast.WS['True Strike'].Acc
    sets.precast.WS['Black Halo'] = set_combine(sets.precast.WS['Savage Blade'], {})
    sets.precast.WS['Black Halo'].Acc = set_combine(sets.precast.WS['Black Halo'], {})
    sets.precast.WS['Realmrazer'] = sets.precast.WS['Requiescat']
    sets.precast.WS['Realmrazer'].Acc = sets.precast.WS['Requiescat'].Acc
    sets.precast.WS['Flash Nova'] = set_combine(sets.precast.WS['Sanguine Blade'], {})

	-- Midcast Sets
    sets.midcast.SpellInterrupt = {}
	
	sets.midcast.Cure = {
		ammo="Pemphredo Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Telchine Gloves", augments={'"Fast Cast"+5','Enh. Mag. eff. dur. +9',}},
		legs="Malignance Tights",
		feet={ name="Taeon Boots", augments={'"Fast Cast"+5','Phalanx +2',}},
		neck="Loricate Torque +1",
		waist="Luminary Sash",
		left_ear="Mendi. Earring",
		right_ear="Gifted Earring",
		left_ring="Lebeche Ring",
		right_ring="Gelatinous Ring +1",
		back="Solemnity Cape",
	}

    sets.midcast['Blue Magic'] = {}
    sets.midcast['Blue Magic'].Physical = {
		ammo="Ginsen",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Lissome Necklace",
		waist="Grunfeld Rope",
		left_ear="Odr Earring",
		right_ear="Telos Earring",
		left_ring="Ilabrat Ring",
		right_ring="Begrudging Ring",
		back="Izdubar Mantle",
	}
    
	sets.midcast['Blue Magic'].Magical = {
		ammo="Pemphredo Tathlum",
		--head="Jhakri Coronal +2",
		body="Cohort Cloak +1",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Sacro Cord",
		left_ear="Friomisi Earring",
		right_ear="Regal Earring",
		left_ring="Jhakri Ring",
		right_ring="Arvina Ringlet +1",
		back="Izdubar Mantle",
	}
		
    sets.midcast['Blue Magic'].Breath = set_combine(sets.midcast['Blue Magic'].Magical, {})

    sets.midcast['Blue Magic'].MagicalDark = set_combine(sets.midcast['Blue Magic'].Magical, {
		head="Pixie Hairpin +1",
		left_ring="Evanescence Ring",
		right_ring="Archon Ring",
	})

    sets.midcast['Blue Magic'].MagicalLight = set_combine(sets.midcast['Blue Magic'].Magical, {
		right_ring="Weather. Ring",
	})
    
	sets.midcast['Blue Magic'].MagicAcc = {
		ammo="Pemphredo Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Aya. Gambieras +2",
		neck="Erra Pendant",
		waist="Luminary Sash",
		left_ear="Regal Earring",
		right_ear="Digni. Earring",
		left_ring="Jhakri Ring",
		right_ring="Weather. Ring",
		back="Izdubar Mantle",
	}
	sets.midcast['Blue Magic']['Silent Storm'] = sets.midcast['Blue Magic'].MagicAcc
	
    sets.midcast['Blue Magic'].Healing = set_combine(sets.midcast['Blue Magic'], {
		ammo="Pemphredo Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Telchine Gloves", augments={'"Fast Cast"+5','Enh. Mag. eff. dur. +9',}},
		legs="Malignance Tights",
		feet={ name="Taeon Boots", augments={'"Fast Cast"+5','Phalanx +2',}},
		neck="Loricate Torque +1",
		waist="Luminary Sash",
		left_ear="Mendi. Earring",
		right_ear="Gifted Earring",
		left_ring="Lebeche Ring",
		right_ring="Gelatinous Ring +1",
		back="Solemnity Cape",
	})
	
    sets.midcast['Blue Magic'].HealingSelf = set_combine(sets.midcast['Blue Magic'].Healing, {})

    sets.midcast['Blue Magic']['White Wind'] = set_combine(sets.midcast['Blue Magic'].Healing, {		
		main="Chatoyant Staff",
	})

    sets.midcast['Blue Magic'].Buff = sets.midcast['Blue Magic']
	
    sets.midcast['Blue Magic'].SkillBuff = set_combine(sets.midcast['Blue Magic'].Buff,{
	    neck="Incanter's Torque",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Izdubar Mantle",
	})

    sets.midcast['Enhancing Magic'] = {}

    sets.midcast.EnhancingDuration = {
		head=gear.Telchine_Head,
		body=gear.Telchine_Body,
		hands=gear.Telchine_Hands,
		legs=gear.Telchine_Legs,
		feet=gear.Telchine_Feet,
    }

    sets.midcast.Stoneskin = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.Phalanx = set_combine(sets.midcast.EnhancingDuration, {
		body=gear.Taeon_Body,
		hands=gear.Taeon_Hands,
		legs=gear.Taeon_Legs,
		feet=gear.Taeon_Feet,
	})
	
    sets.midcast['Elemental Magic'] = {
		ammo="Pemphredo Tathlum",
		body="Cohort Cloak +1",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Sacro Cord",
		left_ear="Friomisi Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Jhakri Ring",
		back="Izdubar Mantle",
	}
	
	sets.midcast.Enfeeble = {		
		ammo="Pemphredo Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Aya. Gambieras +2",
		neck="Erra Pendant",
		waist="Luminary Sash",
		left_ear="Regal Earring",
		right_ear="Digni. Earring",
		left_ring="Jhakri Ring",
		right_ring="Weather. Ring",
		back="Izdubar Mantle",
}
	
    -- Resting sets
    sets.resting = {body="Jhakri Robe +2"}

    -- Idle sets
    sets.idle = {
		ammo="Staunch Tathlum",
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
		right_ring="Shadow Ring",
		back="Reiki Cloak",
	}

    sets.idle.Refresh = set_combine(sets.idle, {body="Jhakri Robe +2"})

    sets.idle.Town = set_combine(sets.idle, {legs="Carmine Cuisses +1"})

    sets.idle.Weak = sets.idle.DT

	-- Defense Sets
    sets.defense.PDT = {}
    sets.defense.MDT = sets.defense.PDT

    -- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups

    sets.engaged = {
		main="Naegling",
		sub={ name="Colada", augments={'"Dbl.Atk."+3','DEX+6','Accuracy+19',}},
		ammo="Ginsen",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'Accuracy+20','Attack+20','"Subtle Blow"+8',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet="Malignance Boots",
		neck="Lissome Necklace",
		waist="Windbuffet Belt +1",
		left_ear="Dedition Earring",
		right_ear="Brutal Earring",
		left_ring="Epona's Ring",
		right_ring="Chirich Ring +1",
		back="Relucent Cape",
	}

    sets.engaged.Acc = set_combine(sets.engaged, {
		left_ear="Telos Earring",
		left_ring="Chirich Ring +1",
	})

    sets.engaged.Hybrid = set_combine(sets.engaged, {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		waist="Reiki Yotai",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
	})
	
	sets.engaged.Hybrid.Acc = set_combine(sets.engaged.Hybrid, {})

   -- Special Sets
    sets.magic_burst = set_combine(sets.midcast['Blue Magic'].Magical, {})

    sets.Kiting = {legs="Carmine Cuisses +1"}
    sets.latent_refresh = {waist="Fucho-no-Obi"}

	sets.Obi = {waist="Hachirin-no-Obi"}
    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
    sets.TreasureHunter = {body=gear.Herculean_Body_TH, waist="Chaac belt", feet="Volte Boots"}
	sets.midcast.Diaga = sets.TreasureHunter
	--sets.midcast['Subduction'] = set_combine(sets.midcast['Blue Magic'].Magical, sets.TreasureHunter)
	
	
	sets.weapons.Magic = {main="Naegling",sub="Vampirism"}
	sets.weapons.DualWield.Magic = {main="Naegling",sub="Vampirism"}
	
	sets.weapons.Melee = {main="Naegling",sub="Colada"}
	sets.weapons.DualWield.Melee = {main="Naegling",sub="Colada"}
	
	sets.weapons.Proc = {main="Trainee Knife", sub="Qutrub Knife"}
	sets.weapons.DualWield.Proc = {main="Trainee Knife", sub="Qutrub Knife"}
	
	sets.weapons.Fish = {range="Lu Shang's F. Rod",ammo="Fly Lure"}
	sets.weapons.DualWield.Fish = {range="Lu Shang's F. Rod",ammo="Fly Lure"}

end
