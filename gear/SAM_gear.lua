function init_gear_sets()

	-- JSE -- 
	-- SAM
	gear.SAM_TP = {	name="Takaha Mantle"}
	gear.SAM_STR_WS = { name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}

	--place items here to be grabbed when //gs org is run. (requires Organizer)
	organizer_items = {}

	sets.enmity = {}
	
    sets.precast.JA['Blade Bash'] = {}
    sets.precast.JA['Hagakure'] = {}
    sets.precast.JA['Hamanoha'] = {}
    sets.precast.JA['Hasso'] = {}
    sets.precast.JA['Konzen-ittai'] = {}
    sets.precast.JA['Meditate'] = {    
		head="Myochin Kabuto",
		hands="Saotome Kote",
		back="Smertrios's Mantle",
	}
    sets.precast.JA['Seigan'] = {}
    sets.precast.JA['Sekkanoki'] = {}
    sets.precast.JA['Sengikori'] = {}
    sets.precast.JA['Third Eye'] = {}
    sets.precast.JA['Warding Circle'] = {}
    sets.precast.JA['Yaegasumi'] = {}
	
    sets.precast.FC = {
		ammo="Sapience Orb",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		neck="Voltsurge Torque",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Weather. Ring",
	}
    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})
	
	sets.precast.RA = {range="Ullr",ammo="Demon Arrow",}

    -- Weaponskill sets	
	
	-- Example 'FullTP' set :
	-- sets.precast.WS['Resolution'].FullTP = set_combine(sets.precast.WS['Resolution'],{})
	-- sets.precast.WS['Resolution'].Acc.FullTP = set_combine(sets.precast.WS['Resolution'].Acc,{})
	-- sets.precast.WS['Resolution'].HighAcc.FullTP = set_combine(sets.precast.WS['Resolution'].HighAcc,{})
	
	-- Default WS -- equipped if no gear is specified
    sets.precast.WS = {
		sub="Utu Grip",
		ammo="Knobkierrie",
		head=gear.Valorous_Head_WSD,
		body="Flamma Korazin +2",
		hands=gear.Valorous_Hands_WSD,
		legs="Hiza. Hizayoroi +2",
		feet=gear.Valorous_Feet_WSD,
		neck="Combatant's Torque",
		waist="Sailfi Belt +1",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Thrud Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Regal Ring",
		back=gear.SAM_STR_WS,
	}
	
	-- Tachi: Enpi		STR 60%
    sets.precast.WS['Tachi: Enpi'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Enpi'].Acc = set_combine(sets.precast.WS['Tachi: Enpi'], {})
	sets.precast.WS['Tachi: Enpi'].HighAcc = set_combine(sets.precast.WS['Tachi: Enpi'].HighAcc, {})
	
	-- Tachi: Hobaku	STR 60%
    sets.precast.WS['Tachi: Hoabku'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Hoabku'].Acc = set_combine(sets.precast.WS['Tachi: Hoabku'], {})
	sets.precast.WS['Tachi: Hoabku'].HighAcc = set_combine(sets.precast.WS['Tachi: Hoabku'].HighAcc, {})
	
	-- Tachi: Goten		STR 60%
    sets.precast.WS['Tachi: Goten'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Goten'].Acc = set_combine(sets.precast.WS['Tachi: Goten'], {})
	sets.precast.WS['Tachi: Goten'].HighAcc = set_combine(sets.precast.WS['Tachi: Goten'].HighAcc, {})
	
	-- Tachi: Kagero	STR 75%
    sets.precast.WS['Tachi: Kagero'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Kagero'].Acc = set_combine(sets.precast.WS['Tachi: Kagero'], {})
	sets.precast.WS['Tachi: Kagero'].HighAcc = set_combine(sets.precast.WS['Tachi: Kagero'].HighAcc, {})
	
	-- Tachi: Jinpu		STR 30%
    sets.precast.WS['Tachi: Jinpu'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Jinpu'].Acc = set_combine(sets.precast.WS['Tachi: Jinpu'], {})
	sets.precast.WS['Tachi: Jinpu'].HighAcc = set_combine(sets.precast.WS['Tachi: Jinpu'].HighAcc, {})
	
	-- Tachi: Koki		STR 50% MND 30%
    sets.precast.WS['Tachi: Koki'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Koki'].Acc = set_combine(sets.precast.WS['Tachi: Koki'], {})
	sets.precast.WS['Tachi: Koki'].HighAcc = set_combine(sets.precast.WS['Tachi: Koki'].HighAcc, {})
	
	-- Tachi: Yukikaze	STR 75%
    sets.precast.WS['Tachi: Yukikaze'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Yukikaze'].Acc = set_combine(sets.precast.WS['Tachi: Yukikaze'], {})
	sets.precast.WS['Tachi: Yukikaze'].HighAcc = set_combine(sets.precast.WS['Tachi: Yukikaze'].HighAcc, {})
	
	-- Tachi: Gekko		STR 75%
    sets.precast.WS['Tachi: Gekko'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Gekko'].Acc = set_combine(sets.precast.WS['Tachi: Gekko'], {})
	sets.precast.WS['Tachi: Gekko'].HighAcc = set_combine(sets.precast.WS['Tachi: Gekko'].HighAcc, {})
	
	-- Tachi: Kasha		STR 75%
    sets.precast.WS['Tachi: Kasha'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Kasha'].Acc = set_combine(sets.precast.WS['Tachi: Kasha'], {})
	sets.precast.WS['Tachi: Kasha'].HighAcc = set_combine(sets.precast.WS['Tachi: Kasha'].HighAcc, {})
	
	-- Tachi: Ageha		CHR 60% STR 40%
    sets.precast.WS['Tachi: Ageha'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Ageha'].Acc = set_combine(sets.precast.WS['Tachi: Ageha'], {})
	sets.precast.WS['Tachi: Ageha'].HighAcc = set_combine(sets.precast.WS['Tachi: Ageha'].HighAcc, {})
	
	-- Tachi: Shoha		STR 73%~85%
    sets.precast.WS['Tachi: Shoha'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Shoha'].Acc = set_combine(sets.precast.WS['Tachi: Shoha'], {})
	sets.precast.WS['Tachi: Shoha'].HighAcc = set_combine(sets.precast.WS['Tachi: Shoha'].HighAcc, {})
	
	-- Tachi: Kaiten	STR 80%
    sets.precast.WS['Tachi: Kaiten'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Kaiten'].Acc = set_combine(sets.precast.WS['Tachi: Kaiten'], {})
	sets.precast.WS['Tachi: Kaiten'].HighAcc = set_combine(sets.precast.WS['Tachi: Kaiten'].HighAcc, {})
	
	-- Tachi: Fudo		STR 80%
    sets.precast.WS['Tachi: Fudo'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Fudo'].Acc = set_combine(sets.precast.WS['Tachi: Fudo'], {})
	sets.precast.WS['Tachi: Fudo'].HighAcc = set_combine(sets.precast.WS['Tachi: Fudo'].HighAcc, {})
	
	-- Tachi: Rana		STR 50%	
    sets.precast.WS['Tachi: Rana'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Tachi: Rana'].Acc = set_combine(sets.precast.WS['Tachi: Rana'], {})
	sets.precast.WS['Tachi: Rana'].HighAcc = set_combine(sets.precast.WS['Tachi: Rana'].HighAcc, {})
	
	-- Polearm --
	
	-- Impulse Drive
    sets.precast.WS['Impulse Drive'] = set_combine(sets.precast.WS, {
		hands="Flam. Manopolas +2",
		feet="Thereoid Greaves",
		left_ring="Begrudging Ring",
	})
	sets.precast.WS['Impulse Drive'].Acc = set_combine(sets.precast.WS['Impulse Drive'], {})
	sets.precast.WS['Impulse Drive'].HighAcc = set_combine(sets.precast.WS['Impulse Drive'].HighAcc, {})
	
	-- Sonic Thrust
    sets.precast.WS['Sonic Thrust'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Sonic Thrust'].Acc = set_combine(sets.precast.WS['Sonic Thrust'], {})
	sets.precast.WS['Sonic Thrust'].HighAcc = set_combine(sets.precast.WS['Sonic Thrust'].HighAcc, {})
	
    -- Resting --
    sets.resting = {}
    
    -- Idle --
    sets.idle = {
		ammo="Staunch Tathlum",
		head="Loess Barbuta +1",
		body="Emet Harness +1",
		hands="Macabre Gaunt. +1",
		legs="Flamma Dirs +2",
		feet="Danzo Sune-Ate",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Solemnity Cape",
	}
	
	sets.idle.Refresh = set_combine(sets.idle, {})
	
    sets.idle.Town = set_combine(sets.idle, {})
	
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
	
	-- Engaged --
    sets.engaged = {
		ammo="Coiste Bodhar",
		head="Flam. Zucchetto +2",
		body="Flamma Korazin +2",
		hands="Flam. Manopolas +2",
		legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
		feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
		neck="Combatant's Torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Dedition Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Chirich Ring +1",
		back=gear.SAM_TP,
	}
		
	-- Acc --
    sets.engaged.Acc = set_combine(sets.engaged, {})
	
	-- HighAcc --
    sets.engaged.HighAcc = set_combine(sets.engaged.Acc, {})
	
	-- Hybrid --
	sets.engaged.DT = set_combine(sets.engaged, {
		neck="Loricate Torque +1",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring",
	})
	sets.engaged.Acc.DT = set_combine(sets.engaged.DT, {})
    sets.engaged.HighAcc.DT = set_combine(sets.engaged.Acc.DT, {})
	
	-- Conditional Sets --
	
	-- Doomed
    sets.buff.Doom = {}
	-- 'Tag' TreasureHunter
    sets.TreasureHunter = {}
		
	-- Capacity point cape	
	sets.CP = {back="Mecisto. Mantle"}
	-- Equipped at Night time to left earring --
	sets.LugraLeft = {left_ear="Lugra Earring +1"}
	-- Elemental Sash --
	sets.Obi = {waist="Hachirin-no-Obi",}
	-- Kiting Mode --
    sets.Kiting = {feet="Danzo sune-ate"}
	
	-- Weapon sets -- determined by state.WeaponSet
	sets.weapons.GreatKatana = {main="Norifusa +1",sub="Utu Grip"}
	sets.weapons.Polearm = {main="Shining One",sub="Utu Grip"}
end