function init_gear_sets()
    
	organizer_items = {
		echos="Echo Drops",
		misoramen="Miso Ramen +1",
		mantles="Rudianos's Mantle",
	}	
	
	--Full Enmity Set, place common items here to be combined into sets below.
	sets.Enmity = {
		main="Brilliance",
		sub="Aegis",
		ammo="Sapience Orb",
		head="Loess Barbuta",
		body="Rev. Surcoat +3",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Unmoving Collar +1",
		waist="Creed Baudrier",
		left_ear="Odnowa Earring +1",
		right_ear="Cryptic Earring",
		left_ring="Apeile Ring +1",
		right_ring="Apeile Ring",
		back="Reiki Cloak",
	}
	
	-- Spell Interruption rate down Master Set // requires 102% to gaurantee spellcast.
	sets.SIRD = {    
		main={ name="Brilliance", augments={'Shield skill +10','Divine magic skill +15','Enmity+7','DMG:+15',}},
		sub="Aegis",
		ammo="Staunch Tathlum",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body="Rev. Surcoat +3",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Founder's Hose", augments={'MND+3','Breath dmg. taken -3%',}},
		feet={ name="Odyssean Greaves", augments={'Phys. dmg. taken -4%','INT+10','Accuracy+3',}},
		neck="Loricate Torque +1",
		waist="Rumination Sash",
		left_ear="Odnowa Earring +1",
		right_ear="Knightly Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Reiki Cloak",
	}
	
	------------------------------------------------
    -- Precast Sets
    ------------------------------------------------
	
	-- Precast sets to enhance JAs
    sets.precast.JA['Invincible'] = {legs={ name="Cab. Breeches", augments={'Enhances "Invincible" effect',}},}
    sets.precast.JA['Holy Circle'] = {}
    sets.precast.JA['Shield Bash'] = {}
    sets.precast.JA['Sentinel'] = {feet={ name="Cab. Leggings", augments={'Enhances "Guardian" effect',}},}
    sets.precast.JA['Rampart'] = {head={ name="Cab. Coronet", augments={'Enhances "Iron Will" effect',}},}
    sets.precast.JA['Fealty'] = {body={ name="Cab. Surcoat", augments={'Enhances "Fealty" effect',}},}
    sets.precast.JA['Divine Emblem'] = {}
    sets.precast.JA['Cover'] = {}
    sets.precast.JA['Chivalry'] = {hands="Cab. Gauntlets"}
	sets.precast.JA['Majesty'] = sets.Enmity
	
	
	sets.precast.JA['Provoke'] = sets.Enmity
	sets.precast.JA['Warcry'] = sets.Enmity
	sets.precast.JA['Defender'] = sets.Enmity
  
    -- Fast cast sets for spells
    sets.precast.FC = {
		main="Malignance Sword",
		sub="Chanter's Shield",
		ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Rev. Surcoat +3", priority=15},
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Odyssean Greaves",
		neck="Voltsurge Torque",
		waist={name="Creed Baudrier", priority=14},
		left_ear={name="Odnowa Earring +1",priority=13},
		right_ear={name="Odnowa Earring",priority=12},
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back=gear.FC_PDT_CAPE,
	}

    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {})
    
	-- Weaponskill sets
    
	-- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {}
	-- Defaul set with state 'Acc'
    sets.precast.WS.Acc = {}
	
    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS, {})
    sets.precast.WS['Requiescat'].Acc = set_combine(sets.precast.WS.Acc, {})
	
    sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast.WS, {
		ammo="Ginsen",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Flam. Manopolas +2",
		legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		feet="Thereoid Greaves",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Mache Earring +1",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Begrudging Ring",
		back=gear.TP_CAPE,
	})
	
    sets.precast.WS['Chant du Cygne'].Acc = set_combine(sets.precast.WS.Acc, {})
	
    sets.precast.WS['Sanguine Blade'] = {} 
    
	sets.precast.WS['Atonement'] = {
		ammo="Staunch Tathlum",
		head="Loess Barbuta",
		body="Rev. Surcoat +3",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Odnowa Earring +1",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Rufescent Ring",
		right_ring="Supershear Ring",
		back="Reiki Cloak",
	}
	
	sets.precast.WS['Savage Blade'] = {
		ammo="Ginsen",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +2",
		feet="Sulev. Leggings +2",
		neck="Lissome Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Rufescent Ring",
		right_ring="Regal Ring",
		back=gear,TP_CAPE,
	}
	
	sets.precast.WS['Swift Blade'] = {
		ammo="Ginsen",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +2",
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear="Mache Earring +1",
		left_ring="Rufescent Ring",
		right_ring="Petrov Ring",
		back=gear.TP_CAPE,
	}
    
	sets.precast.WS['Impulse Drive'] = {}
	
	sets.precast.WS['Shell Crusher'] = {}
	
    --------------------------------------
    -- Midcast sets
    --------------------------------------
	
    sets.midcast.FastRecast = {}
        	
	sets.midcast['White Magic'] = set_combine(sets.SIRD,{})
	sets.midcast['Healing Magic'] = set_combine(sets.SIRD,{})
	sets.midcast['Blue Magic'] = set_combine(sets.SIRD,{})
	
	-- Banishga set
	sets.midcast['Divine Magic'] = set_combine(sets.SIRD,{
		main={ name="Brilliance", augments={'Shield skill +10','Divine magic skill +15','Enmity+7','DMG:+15',}},
		body="Rev. Surcoat +3",
		neck="Incanter's Torque",
		waist="Asklepian Belt",
	})	

    sets.midcast['Enhancing Magic'] = set_combine(sets.SIRD,{
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		neck="Incanter's Torque",
		waist="Olympus Sash",
		right_ear="Andoaa Earring",
	})
	
	sets.midcast.Enlight = set_combine(sets.SIRD, { main="Brilliance"})
	sets.midcast.Jettatura = sets.Enmity
	sets.midcast.Flash = sets.Enmity
	
	sets.midcast.BarElement = sets.midcast['Enhancing Magic']
		
	-- Full cure potency set.	
	sets.midcast.Cure = set_combine(sets.SIRD, {
		main={ name="Brilliance", augments={'Shield skill +10','Divine magic skill +15','Enmity+7','DMG:+15',}},
		sub="Aegis",
		ammo="Staunch Tathlum",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body={ name="Jumalik Mail", augments={'HP+50','Attack+13','Enmity+7','"Refresh"+1',}},
		hands="Macabre Gaunt. +1",
		legs={ name="Founder's Hose", augments={'MND+3','Breath dmg. taken -3%',}},
		feet={ name="Odyssean Greaves", augments={'Mag. Acc.+12','"Fast Cast"+4',}},
		neck="Unmoving Collar +1",
		waist="Rumination Sash",
		left_ear="Nourish. Earring +1",
		right_ear="Knightly Earring",
		left_ring="Eihwaz Ring",
		right_ring="Supershear Ring",
		back=gear.Cure_SIRD_Cape,
	})
	
	--Cure set for PDT/MDT Defense Mode, equip's when defense mode is Physical.
	sets.midcast.Cure.PDT = {
		main="Malignance Sword",
		sub="Aegis",
		ammo="Staunch Tathlum",
		head={ name="Souv. Schaller +1", augments={'HP+105','VIT+12','Phys. dmg. taken -4',}},
		body="Rev. Surcoat +3",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Founder's Hose", augments={'MND+3','Breath dmg. taken -3%',}},
		feet={ name="Odyssean Greaves", augments={'Mag. Acc.+12','"Fast Cast"+4',}},
		neck="Loricate Torque +1",
		waist="Rumination Sash",
		left_ear="Odnowa Earring +1",
		right_ear="Nourish. Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Rudianos's Mantle", augments={'VIT+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
	}
	
	sets.midcast.Cure.MDT = sets.midcast.Cure.PDT
	
	sets.midcast.Phalanx = set_combine(sets.SIRD, {    
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		waist="Rumination Sash",
		back=gear.Phalanx_Cape,
	})
	
    sets.midcast.Protect = set_combine(sets.SIRD, {right_ring="Sheltered Ring"})
    sets.midcast.Shell = sets.midcast.Protect
	sets.midcast.Aquaveil = sets.SIRD

    --------------------------------------
    -- Defense sets
    --------------------------------------
    
    -- If EquipShield toggle is on (Win+F10 or Win+F11), equip the weapon/shield combos here
    -- when activating or changing defense mode:
    sets.PhysicalShield = {} -- Ochain
    sets.MagicalShield = {} -- Aegis

    -- Master Defense sets
    sets.defense.PDT = {	    
		main="Malignance Sword",
		sub="Aegis",
	    ammo="Staunch Tathlum",
		head={ name="Souv. Schaller +1", priority=12},
		body={ name="Rev. Surcoat +3",priority=15},
		hands={ name="Souv. Handsch. +1", priority=11},
		legs={ name="Souv. Diechlings +1", priority=10},
		feet={ name="Souveran Schuhs +1", priority=9},
		neck="Warder's Charm +1",
		waist="Flume Belt +1",
		left_ear={name="Odnowa Earring +1",priority=13},
		right_ear="Thureous Earring",
		left_ring="Defending Ring",
		right_ring="Regal Ring",
		back=gear.FC_PDT_CAPE,
	}
	
	sets.defense.Crit = set_combine(sets.defense.PDT, {
	    right_ring="Warden's Ring",
		back="Reiki Cloak",
	})
	
    sets.defense.Charm = set_combine(sets.defense.PDT, {    
		neck="Unmoving Collar +1",
		right_ring="Purity Ring",
		back="Solemnity Cape",
	})
	
	sets.defense.HP = set_combine(sets.defense.PDT, {    
		right_ear="Odnowa Earring",
	})
    -- To cap MDT with Shell IV (52/256), need 76/256 in gear.
    -- Shellra V can provide 75/256, which would need another 53/256 in gear.
    sets.defense.MDT = set_combine(sets.defense.PDT, {    
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
	})
	
	------------------------------------------------
    -- Idle/resting/defense/etc sets
    ------------------------------------------------
	
	--Twilight Mail equips automatically if Doomed ( All states )
	sets.Reraise = {    
		main="Malignance Sword",
		sub="Aegis",
		ammo="Staunch Tathlum",
		head="Twilight Helm",
		body="Twilight Mail",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Odnowa Earring +1",
		right_ear="Odnowa Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back=gear.FC_PDT_CAPE,
	}

    -- Idle sets
    sets.idle = {
		main="Malignance Sword",
		sub="Aegis",
		ammo="Homiliary",
		head="Chev. Armet +1",
		body="Rev. Surcoat +3",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Rev. Leggings +3",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Ethereal Earring",
		right_ear="Thureous Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back=gear.FC_PDT_CAPE,
	}
	
	-- Idle with state.DefenseMode 'Physical' 
	sets.idle.PDT = sets.defense.PDT
	
	-- Idle with state.IdleMode 'Refresh'
	sets.idle.Refresh = set_combine(sets.idle, {})

	--Movement speed item equipped when kiting mode on.
    sets.Kiting = {legs="Carmine Cuisses +1"}

    sets.idle.Town = set_combine(sets.idle, sets.Kiting)
    
    sets.idle.Weak = sets.Reraise
    
    sets.idle.Weak.Reraise = set_combine(sets.idle.Weak, sets.Reraise)
    
    sets.resting = sets.idle.Refresh


    -- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups
	
	-- Engaged with no specific DefenseMode or OffenseMode
    sets.engaged = {
		main="Naegling",
		sub="Aegis",
		ammo="Ginsen",
		head="Sulevia's Mask +2",
		body="Hjarrandi Breast.",
		hands="Sulev. Gauntlets +2",
		legs="Valor. Hose",
		feet="Sulev. Leggings +2",
		neck="Lissome Necklace",
		waist="Sailfi Belt +1",
		left_ear="Telos Earring",
		right_ear="Mache Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back=gear.TP_CAPE,
	}
	
	-- Engaged with OffenseMode 'Acc'
    sets.engaged.Acc = set_combine(sets.engaged, {})

	-- Engaged with state.DefenseMode set 'Physical'
    sets.engaged.PDT = set_combine(sets.defense.PDT, {})
	
	-- Engaged with state.DefenseMode set 'Physical' and state.OffenseMode set 'Acc'
    sets.engaged.Acc.PDT = set_combine(sets.engaged.Acc, {
		ammo="Ginsen",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Rev. Leggings +3",
		neck="Lissome Necklace",
		waist="Sailfi Belt +1",
		left_ear="Odnowa Earring +1",
		right_ear="Telos Earring",
		left_ring="Defending Ring",
		right_ring="Regal Ring",
		back=gear.TP_CAPE, 
	})
	
	-- Engaged with state.DefenseMode set 'Magical' and state.OffenseMode set 'Acc'
    sets.engaged.Acc.MDT = set_combine(sets.engaged.Acc, {
		ammo="Ginsen",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Rev. Leggings +3",
		neck="Warder's Charm +1",
		waist="Sailfi Belt +1",
		left_ear="Odnowa Earring +1",
		right_ear="Telos Earring",
		left_ring="Defending Ring",
		right_ring="Regal Ring",
		back=gear.TP_CAPE, 
	})		
    --------------------------------------
    -- Custom Weapon Sets
    --------------------------------------
	sets.engaged.MalignancePole = {
	    main="Malignance Pole",
		sub="Flanged Grip",
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body="Flamma Korazin +2",
		hands="Flam. Manopolas +2",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		neck="Lissome Necklace",
		waist="Kentarch +1 Belt",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Flamma Ring",
		right_ring="Sulevia's Ring",
		back=gear.TP_CAPE,
	}
	
	sets.engaged.MalignancePole.PDT = sets.engaged.MalignancePole
	sets.engaged.MalignancePole.Acc = sets.engaged.MalignancePole
	sets.engaged.MalignancePole.Acc.PDT = sets.engaged.MalignancePole

    --------------------------------------
    -- Custom buff sets
    --------------------------------------

    sets.buff.Doom = {waist="Gishdubar Sash",right_ring="Purity Ring"}
    sets.buff.Cover = {}
    sets.CP = {back="Mecisto. Mantle"}
    sets.TreasureHunter = {waist="Chaac belt", feet="Volte Boots"}
	
end