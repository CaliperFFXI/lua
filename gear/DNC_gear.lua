function init_gear_sets()

    -- Precast
    sets.Enmity = {}

    sets.precast.JA['Provoke'] = sets.Enmity
    sets.precast.JA['No Foot Rise'] = {}
    sets.precast.JA['Trance'] = {}

    sets.precast.Waltz = {} -- Waltz Potency/CHR
    sets.precast.WaltzSelf = set_combine(sets.precast.Waltz, {}) -- Waltz effects received
    sets.precast.Waltz['Healing Waltz'] = {}
	
    sets.precast.Samba = {}
	
    sets.precast.Jig = {}
	
    sets.precast.Step = {}
    sets.precast.Step['Feather Step'] = set_combine(sets.precast.Step, {})
	
    sets.precast.Flourish1 = {}
    sets.precast.Flourish1['Animated Flourish'] = sets.Enmity
    sets.precast.Flourish1['Violent Flourish'] = {} -- Magic Accuracy
    sets.precast.Flourish1['Desperate Flourish'] = {} -- Accuracy
    sets.precast.Flourish2 = {}
    sets.precast.Flourish2['Reverse Flourish'] = {}
    sets.precast.Flourish3 = {}
    sets.precast.Flourish3['Striking Flourish'] = {}
    sets.precast.Flourish3['Climactic Flourish'] = {}

    sets.precast.FC = {}
    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})


	-- Weapon Skills
    sets.precast.WS = {} -- default set

    sets.precast.WS.Acc = set_combine(sets.precast.WS, {})

    sets.precast.WS.Critical = {}

    sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS, {})
    sets.precast.WS['Exenterator'].Acc = set_combine(sets.precast.WS['Exenterator'], {})

    sets.precast.WS['Pyrrhic Kleos'] = set_combine(sets.precast.WS, {})
    sets.precast.WS['Pyrrhic Kleos'].Acc = set_combine(sets.precast.WS['Pyrrhic Kleos'], {})

    sets.precast.WS['Evisceration'] = set_combine(sets.precast.WS, {})
    sets.precast.WS['Evisceration'].Acc = set_combine(sets.precast.WS['Evisceration'], {})

    sets.precast.WS['Rudra\'s Storm'] = set_combine(sets.precast.WS, {})
    sets.precast.WS['Rudra\'s Storm'].Acc = set_combine(sets.precast.WS['Rudra\'s Storm'], {})

    sets.precast.WS['Aeolian Edge'] = {}

    sets.midcast.SpellInterrupt = {}

    sets.midcast.Utsusemi = sets.midcast.SpellInterrupt

	-- Idle
    sets.resting = {}

    sets.idle = {}
	
	sets.idle.Regen = set_combine(sets.idle, {})

    sets.idle.Town = set_combine(sets.idle, {})

    sets.idle.Weak = set_combine(sets.idle, {})

	-- Defense
    sets.defense.PDT = {}
    sets.defense.MDT = sets.idle.PDT

    sets.Kiting = {feet="Skd. Jambeaux +1"}
	
	-- Engaged sets
    -- Variations for TP weapon and (optional) offense/defense modes. 
	-- If no defined set is available, default sets are chosen.
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups


    sets.engaged = {}

    sets.engaged.Acc = set_combine(sets.engaged, {})

    -- * DNC Native DW Trait: 30% DW
    -- * DNC Job Points DW Gift: 5% DW

    -- No Magic Haste (74% DW to cap)
    -- sets.engaged.DW = {} 

    -- sets.engaged.DW.Acc = set_combine(sets.engaged.DW, {})

    -- -- 15% Magic Haste (67% DW to cap)
    -- sets.engaged.DW.LowHaste = {} -- 32%

    -- sets.engaged.DW.Acc.LowHaste = set_combine(sets.engaged.DW.LowHaste, {})

    -- -- 30% Magic Haste (56% DW to cap)
    -- sets.engaged.DW.MidHaste = {} 

    -- sets.engaged.DW.Acc.MidHaste = set_combine(sets.engaged.DW.MidHaste, {})

    -- -- 35% Magic Haste (51% DW to cap)
    -- sets.engaged.DW.HighHaste = {} -- 10% Gear

    -- sets.engaged.DW.Acc.HighHaste = set_combine(sets.engaged.DW.HighHaste, {})

    -- -- 45% Magic Haste (36% DW to cap)
    -- sets.engaged.DW.MaxHaste = {} -- 0%

    -- sets.engaged.DW.Acc.MaxHaste = set_combine(sets.engaged.DW.MaxHaste, {})

	--Hybrid Engaged
    sets.engaged.Hybrid = {}
	
    sets.engaged.DT = set_combine(sets.engaged, sets.engaged.Hybrid)
    sets.engaged.Acc.DT = set_combine(sets.engaged.Acc, sets.engaged.Hybrid)

    -- sets.engaged.DW.DT = set_combine(sets.engaged.DW, sets.engaged.Hybrid)
    -- sets.engaged.DW.Acc.DT = set_combine(sets.engaged.DW.Acc, sets.engaged.Hybrid)

    -- sets.engaged.DW.DT.LowHaste = set_combine(sets.engaged.DW.LowHaste, sets.engaged.Hybrid)
    -- sets.engaged.DW.Acc.DT.LowHaste = set_combine(sets.engaged.DW.Acc.LowHaste, sets.engaged.Hybrid)

    -- sets.engaged.DW.DT.MidHaste = set_combine(sets.engaged.DW.MidHaste, sets.engaged.Hybrid)
    -- sets.engaged.DW.Acc.DT.MidHaste = set_combine(sets.engaged.DW.Acc.MidHaste, sets.engaged.Hybrid)

    -- sets.engaged.DW.DT.HighHaste = set_combine(sets.engaged.DW.HighHaste, sets.engaged.Hybrid)
    -- sets.engaged.DW.Acc.DT.HighHaste = set_combine(sets.engaged.DW.Acc.HighHaste, sets.engaged.Hybrid)

    -- sets.engaged.DW.DT.MaxHaste = set_combine(sets.engaged.DW.MaxHaste, sets.engaged.Hybrid)
    -- sets.engaged.DW.Acc.DT.MaxHaste = set_combine(sets.engaged.DW.Acc.MaxHaste, sets.engaged.Hybrid)

	-- Conditional Sets
    sets.buff['Saber Dance'] = {} -- Required to be on full time?
    sets.buff['Fan Dance'] = {} -- Required to be on during Fan Dance
    sets.buff['Climactic Flourish'] = {}
    sets.buff['Closed Position'] = {}
    sets.buff.Doom = {}
    sets.CP = {back="Mecisto. Mantle"}
	
	--Weapon Sets
	sets.Twashtar = {}
	sets.TpBonus = {}

end
