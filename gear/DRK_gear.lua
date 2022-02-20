function init_gear_sets()

	--JSE Capes--
	gear.DRK_TP = { name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	gear.DRK_STR_WSD = { name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}


	--place items here to be grabbed when //gs org is run. (requires Organizer)
	organizer_items = {}

	sets.enmity = {}

    -- Precast 
    sets.precast.JA['Blood Weapon'] = {body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}}}
    sets.precast.JA['Diabolic Eye'] = {hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}}}
    sets.precast.JA['Nether Void'] = {}
    sets.precast.JA['Arcane Circle'] = {}
    sets.precast.JA['Last Resort'] = {back="Ankou's Mantle",feet={ name="Fall. Sollerets +3", augments={'Enhances "Desperate Blows" effect',}}}
    sets.precast.JA['Weapon Bash'] = {}
	
    sets.precast.JA['Lunge'] = {}
    sets.precast.JA['Swipe'] = {}
	
	sets.precast.JA['Provoke'] = {}
	sets.precast.JA['Warcry'] = {}
	sets.precast.JA['Defender'] = {}
	
    -- Fast cast sets for spells
    sets.precast.FC = {
		ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		neck="Voltsurge Torque",
		left_ear="Loquac. Earring",
		right_ear="Malignance Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
	}

    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})
    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})
       
    -- Weaponskill sets	
	
	-- Example 'FullTP' set :
	-- sets.precast.WS['Resolution'].FullTP = set_combine(sets.precast.WS['Resolution'],{})
	-- sets.precast.WS['Resolution'].Acc.FullTP = set_combine(sets.precast.WS['Resolution'].Acc,{})
	-- sets.precast.WS['Resolution'].HighAcc.FullTP = set_combine(sets.precast.WS['Resolution'].HighAcc,{})
	
    sets.precast.WS = {
		ammo="Knobkierrie",
		head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
		body="Ignominy Cuirass +3",
		hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
		legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
		feet="Sulev. Leggings +2",
		neck={ name="Abyssal Beads +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Thrud Earring",
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back=gear.DRK_STR_WSD,
	}
	
    -- Resolution Sets (STR & Multi-Attack) --
	sets.precast.WS['Resolution'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Resolution'].Acc = set_combine(sets.precast.WS['Resolution'], {})
	sets.precast.WS['Resolution'].HighAcc = set_combine(sets.precast.WS['Resolution'].HighAcc, {})
	
	-- Scourge Sets (STR/VIT & WSD+) --
	sets.precast.WS['Scourge'] = set_combine(sets.precast.WS, {back=gear.DRK_STR_WSD})
	sets.precast.WS['Scourge'].Acc = set_combine(sets.precast.WS['Scourge'], {})
	sets.precast.WS['Scourge'].HighAcc = set_combine(sets.precast.WS['Scourge'].HighAcc, {})

    -- Torcleaver Sets (VIT & WSD+) --
	sets.precast.WS['Torcleaver'] = set_combine(sets.precast.WS, {
		ammo="Knobkierrie",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Thrud Earring",
		right_ear="Ishvara Earring",
	})
	sets.precast.WS['Torcleaver'].Acc = set_combine(sets.precast.WS['Torcleaver'], {})
	sets.precast.WS['Torcleaver'].HighAcc = set_combine(sets.precast.WS['Torcleaver'].HighAcc, {})
	
    -- Herculean Slash Sets (MAB/Ice) --
	sets.precast.WS['Herculean Slash'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Herculean Slash'].Acc = set_combine(sets.precast.WS['Herculean Slash'], {})
	sets.precast.WS['Herculean Slash'].HighAcc = set_combine(sets.precast.WS['Herculean Slash'].HighAcc, {})
	
    -- Catastrophe Sets (STR/INT & WSD+) --
	sets.precast.WS['Catastrophe'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Catastrophe'].Acc = set_combine(sets.precast.WS['Catastrophe'], {})
	sets.precast.WS['Catastrophe'].HighAcc = set_combine(sets.precast.WS['Catastrophe'].HighAcc, {})
	
    -- Entropy Sets (INT & Gorget/Belt, four hits) --
	sets.precast.WS['Entropy'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Entropy'].Acc = set_combine(sets.precast.WS['Entropy'], {})
	sets.precast.WS['Entropy'].HighAcc = set_combine(sets.precast.WS['Entropy'].HighAcc, {})
	
    -- Insurgency Sets (STR/INT, four hits) --
	sets.precast.WS['Insurgency'] = set_combine(sets.precast.WS, {right_ring="Niqmaddu Ring"})
	sets.precast.WS['Insurgency'].Acc = set_combine(sets.precast.WS['Insurgency'], {})
	sets.precast.WS['Insurgency'].HighAcc = set_combine(sets.precast.WS['Insurgency'].HighAcc, {})
	
    -- Quietus Sets (STR/MND & WSD+) --
	sets.precast.WS['Quietus'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Quietus'].Acc = set_combine(sets.precast.WS['Quietus'], {})
	sets.precast.WS['Quietus'].HighAcc = set_combine(sets.precast.WS['Quietus'].HighAcc, {})
	
    -- Cross Reaper Sets (STR/MND & WSD+) --
	sets.precast.WS['Cross Reaper'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Cross Reaper'].Acc = set_combine(sets.precast.WS['Cross Reaper'], {})
	sets.precast.WS['Cross Reaper'].HighAcc = set_combine(sets.precast.WS['Cross Reaper'].HighAcc, {})
	
    -- Spinning Scythe Sets (STR & WSD+) --
	sets.precast.WS['Spinning Scythe'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Spinning Scythe'].Acc = set_combine(sets.precast.WS['Spinning Scythe'], {})
	sets.precast.WS['Spinning Scythe'].HighAcc = set_combine(sets.precast.WS['Spinning Scythe'].HighAcc, {})
	
    -- Guillotine Sets (STR/MND) --
	sets.precast.WS['Guillotine'] = set_combine(sets.precast.WS, {})	
	sets.precast.WS['Guillotine'].Acc = set_combine(sets.precast.WS['Guillotine'], {})
	sets.precast.WS['Guillotine'].HighAcc = set_combine(sets.precast.WS['Guillotine'].HighAcc, {})
	
    -- Infernal Scythe Sets (MAB/Dark) --
	sets.precast.WS['Infernal Scythe'] = set_combine(sets.precast.WS, {
		main="Apocalypse",
		sub="Utu Grip",
		ammo="Pemphredo Tathlum",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Hermetic Earring",
		left_ring="Arvina Ringlet +1",
		right_ring="Regal Ring",
		back="Izdubar Mantle",
	})
	sets.precast.WS['Infernal Scythe'].Acc = set_combine(sets.precast.WS['Infernal Scythe'], {})
	sets.precast.WS['Infernal Scythe'].HighAcc = set_combine(sets.precast.WS['Infernal Scythe'].HighAcc, {})
	
    -- Decimation Sets (STR & MA) -- 
	sets.precast.WS['Decimation'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Decimation'].Acc = set_combine(sets.precast.WS['Decimation'], {})
	sets.precast.WS['Decimation'].HighAcc = set_combine(sets.precast.WS['Decimation'].HighAcc, {})

    -- Rampage Sets (STR & MA) -- 
	sets.precast.WS['Rampage'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Rampage'].Acc = set_combine(sets.precast.WS['Rampage'], {})
	sets.precast.WS['Rampage'].HighAcc = set_combine(sets.precast.WS['Rampage'].HighAcc, {})

    -- Smash Axe Sets (STR & WSD+) --
	sets.precast.WS['Smash Axe'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Smash Axe'].Acc = set_combine(sets.precast.WS['Smash Axe'], {})
	sets.precast.WS['Smash Axe'].HighAcc = set_combine(sets.precast.WS['Smash Axe'].HighAcc, {})

    -- Full Break --
	sets.precast.WS['Full Break'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Full Break'].Acc = set_combine(sets.precast.WS['Full Break'], {})
	sets.precast.WS['Full Break'].HighAcc = set_combine(sets.precast.WS['Full Break'].HighAcc, {})
	
	-- Armor Break -
	sets.precast.WS['Armor Break'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Armor Break'].Acc = set_combine(sets.precast.WS['Armor Break'], {})
	sets.precast.WS['Armor Break'].HighAcc = set_combine(sets.precast.WS['Armor Break'].HighAcc, {})
	
    -- Fell Cleave --
	sets.precast.WS['Fell Cleave'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Fell Cleave'].Acc = set_combine(sets.precast.WS['Fell Cleave'], {})
	sets.precast.WS['Fell Cleave'].HighAcc = set_combine(sets.precast.WS['Fell Cleave'].HighAcc, {})
		        	
	
	-- Spells --
	sets.midcast.MAB = {
		ammo="Seeth. Bomblet +1",
		head="Nyame Helm",
		body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
		hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Hirudinea Earring",
		right_ear="Malignance Earring",
		left_ring="Weather. Ring",
		right_ring="Arvina Ringlet +1",
		back="Izdubar Mantle",
	}
	sets.midcast.MACC = set_combine(sets.midcast.MAB,{
		ammo="Pemphredo Tathlum",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Erra Pendant",
		waist="Eschan Stone",
		left_ear="Digni. Earring",
		right_ear="Malignance Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back="Izdubar Mantle",
	})

	sets.midcast['Elemental Magic'] = set_combine(sets.midcast.MAB,{})
	
	-- Dark Skill -- 
	sets.midcast['Dark Magic'] = set_combine(sets.precast.FC,{
		body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
		neck="Incanter's Torque",
		left_ring="Stikini Ring",
		right_ring="Evanescence Ring",
	})
	
	-- Dread Spikes -- Max HP --
	sets.midcast['Dread Spikes'] = {
		head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
		body="Hjarrandi Breast.",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Carrier's Sash",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Reiki Cloak",
	}
		
    -- Absorbs --
	sets.midcast.Absorb = set_combine(sets.midcast.MACC, {back="Ankou's Mantle"})
	
	sets.midcast.Drain = set_combine(sets.midcast.MAB, {    
		ammo="Seeth. Bomblet +1",
		head="Pixie Hairpin +1",
		head={ name="Fall. Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
		--body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
		hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Erra Pendant",
		waist="Eschan Stone",
		left_ear="Hirudinea Earring",
		right_ear="Malignance Earring",
		left_ring="Evanescence Ring",
		right_ring="Archon Ring",
		back="Ankou's Mantle",
	})
	
	sets.midcast.Aspir = set_combine(sets.midcast.MAB, {
		head="Pixie Hairpin +1",
		neck="Erra Pendant",
		left_ring="Evanescence Ring",
		right_ring="Archon Ring",
	})
	
    -- Enfeebling Magic --
	sets.midcast['Enfeebling Magic'] = set_combine(sets.midcast.MACC, {})
	
    -- Elemental Magic --
	sets.midcast['Elemental Magic'] = set_combine(sets.midcast.MAB, {})
	
	-- Enhancing Magic --
	sets.midcast['Enhancing Magic'] = {}
	
	sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {waist="Siegel Sash"})

    -- Resting --
    sets.resting = {}
    
    -- Idle --
    sets.idle = {
		ammo="Staunch Tathlum",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
		left_ear="Eabani Earring",
		right_ear="Cryptic Earring",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back="Solemnity Cape",
	}
	
	sets.idle.Refresh = set_combine(sets.idle, {})
	
    sets.idle.Town = set_combine(sets.idle, {legs="Carmine Cuisses +1"})
	
	sets.idle.Field = sets.idle.Town
    
    sets.idle.Weak = {}
    
    -- Defense -- These sets are overlayed over any equipped set, if enabled.
	-- can be used as a panic button by toggling defenseMode
    sets.defense.PDT = {}
    sets.defense.MDT = set_combine(sets.defense.PDT, {})

    -- Engaged --
	
	-- If no defined set is available, default sets are chosen.
	-- Set construction is as follows...
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups
	-- Hyrbid mode cases are mutually exclusive with Defense Modes, as such:
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.HybridMode.CustomMeleeGroups
	
    sets.engaged = {
		ammo="Coiste Bodhar",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Flam. Manopolas +2",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		neck={ name="Abyssal Beads +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back=gear.DRK_TP,
	}
	
	-- Offense Mode 'STP'
    sets.engaged.STP = set_combine(sets.engaged, {
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Sulev. Leggings +2",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
	})
	
	-- Offense Mode 'HighAcc'
    sets.engaged.Acc = set_combine(sets.engaged, {
	})
	
	-- default Hybrid 
	sets.engaged.DT = set_combine(sets.engaged, {})
	sets.engaged.STP.DT = set_combine(sets.engaged.DT, {})
	sets.engaged.Acc.DT = set_combine(sets.engaged.DT, {})
	
	-- -- Apocalypse engaged --
	-- sets.engaged.Apocalypse = set_combine(sets.engaged, {})
	-- sets.engaged.Apocalypse.Acc = set_combine(sets.engaged.Acc, {})
	
	-- -- Caladbolg engaged --
	-- sets.engaged.Caladbolg = set_combine(sets.engaged, {})
	-- sets.engaged.Caladbolg.Acc = set_combine(sets.engaged.Caladbolg, {})
		
	-- Conditional Sets --
	-- Capacity Points
    sets.CP = {back="Mecisto. Mantle"}
	-- Doomed
    sets.buff.Doom = {}
	-- 'Tag' TreasureHunter
    sets.TreasureHunter = {waist="Chaac belt", legs=gear.Valorous_Legs_TH, feet="Volte Boots"}
	-- Souleater WS Set --
    sets.SoulEater_WS = {}
    -- Arcane Circle/Founders Breastplate WS Set --
	sets.ArcaneCircle_WS = {}
	
	-- NetherVoid -- Equipped post_midcast if buffactive
	sets.NetherVoid = {legs="Heath. Flanchard +1"}
	-- Dark Seal -- Equipped post_midcast if buffactive
	sets.DarkSeal = {head="Fall. Burgeonet +3"}
	
	-- GavialisHelm --
	sets.GavialisHelm = {head="Gavialis Helm"}
	-- Equipped at Night time to left earring --
	sets.LugraRight = {right_ear="Lugra Earring +1"}
	-- Kiting Mode --
    sets.Kiting = {legs="Carmine Cuisses +1"}
	
	sets.weapons.Apocalypse = {main ="Apocalypse",sub="Utu Grip"}
			
end
