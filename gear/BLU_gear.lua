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
		left_ear="Mache Earring +1",
		right_ear="Brutal Earring",
		left_ring="Begrudging Ring",
		right_ring="Ilabrat Ring",
		back="Relucent Cape",
	})

    sets.precast.WS['Chant du Cygne'].Acc = set_combine(sets.precast.WS['Chant du Cygne'], {})

    sets.precast.WS['Vorpal Blade'] = sets.precast.WS['Chant du Cygne']
    sets.precast.WS['Vorpal Blade'].Acc = sets.precast.WS['Chant du Cygne'].Acc

    sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
		ammo="Falcon Eye",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Rufescent Ring",
		right_ring="Ilabrat Ring",
		back={ name="Cornflower Cape", augments={'MP+26','DEX+2','Accuracy+2','Blue Magic skill +10',}},
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

    sets.midcast['Blue Magic'] = {}
    sets.midcast['Blue Magic'].Physical = {}
    sets.midcast['Blue Magic'].PhysicalAcc = set_combine(sets.midcast['Blue Magic'].Physical, {})
    sets.midcast['Blue Magic'].PhysicalStr = sets.midcast['Blue Magic'].Physical
    sets.midcast['Blue Magic'].PhysicalDex = set_combine(sets.midcast['Blue Magic'].Physical, {})
    sets.midcast['Blue Magic'].PhysicalVit = sets.midcast['Blue Magic'].Physical
    sets.midcast['Blue Magic'].PhysicalAgi = set_combine(sets.midcast['Blue Magic'].Physical, {})
    sets.midcast['Blue Magic'].PhysicalInt = set_combine(sets.midcast['Blue Magic'].Physical, {})
    sets.midcast['Blue Magic'].PhysicalMnd = set_combine(sets.midcast['Blue Magic'].Physical, {})
    sets.midcast['Blue Magic'].PhysicalChr = set_combine(sets.midcast['Blue Magic'].Physical, {})
    
	-- Master Nuking Set
	sets.midcast['Blue Magic'].Magical = {
		main="Naegling",
		sub={ name="Colada", augments={'"Dbl.Atk."+3','DEX+6','Accuracy+19',}},
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Regal Earring",
		left_ring="Jhakri Ring",
		right_ring="Arvina Ringlet +1",
		back="Cornflower Cape",
		}

    sets.midcast['Blue Magic'].Magical.Resistant = set_combine(sets.midcast['Blue Magic'].Magical, {})

    sets.midcast['Blue Magic'].MagicalDark = set_combine(sets.midcast['Blue Magic'].Magical, {
		head="Pixie Hairpin +1",
		left_ring="Evanescence Ring",
		right_ring="Archon Ring",
		})

    sets.midcast['Blue Magic'].MagicalLight = set_combine(sets.midcast['Blue Magic'].Magical, {})
    sets.midcast['Blue Magic'].MagicalMnd = set_combine(sets.midcast['Blue Magic'].Magical, {})
    sets.midcast['Blue Magic'].MagicalDex = set_combine(sets.midcast['Blue Magic'].Magical, {})
    sets.midcast['Blue Magic'].MagicalVit = set_combine(sets.midcast['Blue Magic'].Magical, {})
    sets.midcast['Blue Magic'].MagicalChr = set_combine(sets.midcast['Blue Magic'].Magical, {})
    sets.midcast['Blue Magic'].MagicAccuracy = {
		main="Naegling",
		sub="Colada",
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
		back={ name="Cornflower Cape", augments={'MP+26','DEX+2','Accuracy+2','Blue Magic skill +10',}},
	}
	sets.midcast['Blue Magic']['Silent Storm'] = sets.midcast['Blue Magic'].MagicAccuracy
	
    sets.midcast['Blue Magic'].Breath = set_combine(sets.midcast['Blue Magic'].Magical, {})
    sets.midcast['Blue Magic'].StunPhysical = set_combine(sets.midcast['Blue Magic'].MagicAccuracy, {})
    sets.midcast['Blue Magic'].StunMagical = sets.midcast['Blue Magic'].MagicAccuracy
    sets.midcast['Blue Magic'].Healing = set_combine(sets.midcast['Blue Magic'], {
		ammo="Staunch Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Telchine Gloves", augments={'"Fast Cast"+5','Enh. Mag. eff. dur. +9',}},
		legs="Malignance Tights",
		feet={ name="Medium's Sabots", augments={'MP+25','"Conserve MP"+5',}},
		neck="Loricate Torque +1",
		waist="Luminary Sash",
		left_ear="Mendi. Earring",
		right_ear="Regal Earring",
		left_ring="Defending Ring",
		right_ring="Lebeche Ring",
		back="Solemnity Cape",
	})
    sets.midcast['Blue Magic'].HealingSelf = set_combine(sets.midcast['Blue Magic'].Healing, {})

    sets.midcast['Blue Magic']['White Wind'] = set_combine(sets.midcast['Blue Magic'].Healing, {})

    sets.midcast['Blue Magic'].Buff = sets.midcast['Blue Magic']
    sets.midcast['Blue Magic'].Refresh = set_combine(sets.midcast['Blue Magic'], {})
    sets.midcast['Blue Magic'].SkillBasedBuff = sets.midcast['Blue Magic']

    sets.midcast['Blue Magic']['Occultation'] = set_combine(sets.midcast['Blue Magic'], {    
		neck="Incanter's Torque",
		back="Cornflower Cape",
	}) -- 1 shadow per 50 skill

    sets.midcast['Blue Magic']['Carcharian Verve'] = set_combine(sets.midcast['Blue Magic'].Buff, {})

    sets.midcast['Enhancing Magic'] = {}

    sets.midcast.EnhancingDuration = {
		head=gear.Telchine_Head,
		body=gear.Telchine_Body,
		hands=gear.Telchine_Hands,
		legs=gear.Telchine_Legs,
		feet=gear.Telchine_Feet,
    }

    sets.midcast.Refresh = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.Stoneskin = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.Phalanx = set_combine(sets.midcast.EnhancingDuration, {
		body=gear.Taeon_Body,
		hands=gear.Taeon_Hands,
		legs=gear.Taeon_Legs,
		feet=gear.Taeon_Feet,
	})
    sets.midcast.Aquaveil = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.Protect = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.Storm = set_combine(sets.midcast.EnhancingDuration, {})
    sets.midcast.Protectra = sets.midcast.Protect
    sets.midcast.Shell = sets.midcast.Protect
    sets.midcast.Shellra = sets.midcast.Protect
	sets.midcast.Haste = set_combine(sets.midcast.EnhancingDuration, {})

	
    -- Resting sets
    sets.resting = {body="Jhakri Robe +2"}

    -- Idle sets
    sets.idle = {
		ammo="Staunch Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Aya. Gambieras +2",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Ethereal Earring",
		right_ear="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Reiki Cloak",
	}

    sets.idle.Refresh = set_combine(sets.idle, {body="Jhakri Robe +2"})

    sets.idle.Town = set_combine(sets.idle, {legs="Carmine Cuisses +1"})

    sets.idle.Weak = sets.idle.DT

	-- Defense Sets
    sets.defense.PDT = {    
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
	}
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
		feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','"Triple Atk."+2','Attack+14',}},
		neck="Lissome Necklace",
		waist="Windbuffet Belt +1",
		left_ear="Dedition Earring",
		right_ear="Brutal Earring",
		left_ring="Ilabrat Ring",
		right_ring="Epona's Ring",
		back="Relucent Cape",
	}

    sets.engaged.Acc = set_combine(sets.engaged, {
		left_ear="Telos Earring",
		left_ring="Ilabrat Ring",
	})

    sets.engaged.Hybrid = set_combine(sets.engaged, {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		waist="Reiki Yotai",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
	})
	
	sets.engaged.Hybrid.Acc = set_combine(sets.engaged.Hybrid, {})

   -- Special Sets
    sets.magic_burst = set_combine(sets.midcast['Blue Magic'].Magical, {})

    sets.Kiting = {legs="Carmine Cuisses +1"}
    sets.latent_refresh = {waist="Fucho-no-Obi"}

    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
    sets.TreasureHunter = {body=gear.Herculean_Body_TH, waist="Chaac belt", feet="Volte Boots"}
	sets.midcast.Diaga = sets.TreasureHunter
	
	sets.Sword = {}

end
