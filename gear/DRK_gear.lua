function init_gear_sets()

	--place items here to be grabbed when //gs org is run. (requires Organizer)
	organizer_items = {}

	sets.enmity = {}

    -- Precast 
    sets.precast.JA['Blood Weapon'] = {}
    sets.precast.JA['Diabolic Eye'] = {}
    sets.precast.JA['Nether Void'] = {}
    sets.precast.JA['Arcane Circle'] = {}
    sets.precast.JA['Last Resort'] = {}
    sets.precast.JA['Weapon Bash'] = {}
	
    sets.precast.JA['Lunge'] = {}
    sets.precast.JA['Swipe'] = {}
	
	sets.precast.JA['Provoke'] = {}
	sets.precast.JA['Warcry'] = {}
	sets.precast.JA['Defender'] = {}
	
    -- Fast cast sets for spells
    sets.precast.FC = {
	}

    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})
    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})
       
    -- Weaponskill sets	
	
	-- Example 'FullTP' set :
	-- sets.precast.WS['Resolution'].FullTP = set_combine(sets.precast.WS['Resolution'],{})
	-- sets.precast.WS['Resolution'].Acc.FullTP = set_combine(sets.precast.WS['Resolution'].Acc,{})
	-- sets.precast.WS['Resolution'].HighAcc.FullTP = set_combine(sets.precast.WS['Resolution'].HighAcc,{})
	
    -- Resolution Sets (STR & Multi-Attack) --
    sets.precast.WS = {
	}
	sets.precast.WS['Resolution'] = set_combine(sets.precast.WS, {
	})
	sets.precast.WS['Resolution'].Acc = set_combine(sets.precast.WS['Resolution'], {})
	sets.precast.WS['Resolution'].HighAcc = set_combine(sets.precast.WS['Resolution'].HighAcc, {})
	
	-- Scourge Sets (STR/VIT & WSD+) --
	sets.precast.WS['Scourge'] = set_combine(sets.precast.WS, {
	})
	sets.precast.WS['Scourge'].Acc = set_combine(sets.precast.WS['Scourge'], {})
	sets.precast.WS['Scourge'].HighAcc = set_combine(sets.precast.WS['Scourge'].HighAcc, {})

    -- Torcleaver Sets (VIT & WSD+) --
	sets.precast.WS['Torcleaver'] = set_combine(sets.precast.WS, {
	})
	sets.precast.WS['Torcleaver'].Acc = set_combine(sets.precast.WS['Torcleaver'], {})
	sets.precast.WS['Torcleaver'].HighAcc = set_combine(sets.precast.WS['Torcleaver'].HighAcc, {})
	
    -- Herculean Slash Sets (MAB/Ice) --
	sets.precast.WS['Herculean Slash'] = set_combine(sets.precast.WS, {
	})
	sets.precast.WS['Herculean Slash'].Acc = set_combine(sets.precast.WS['Herculean Slash'], {})
	sets.precast.WS['Herculean Slash'].HighAcc = set_combine(sets.precast.WS['Herculean Slash'].HighAcc, {})
	
    -- Catastrophe Sets (STR/INT & WSD+) --
	sets.precast.WS['Catastrophe'] = set_combine(sets.precast.WS, {
	})
	sets.precast.WS['Catastrophe'].Acc = set_combine(sets.precast.WS['Catastrophe'], {})
	sets.precast.WS['Catastrophe'].HighAcc = set_combine(sets.precast.WS['Catastrophe'].HighAcc, {})
	
    -- Entropy Sets (INT & Gorget/Belt, four hits) --
	sets.precast.WS['Entropy'] = set_combine(sets.precast.WS, {
	})
	sets.precast.WS['Entropy'].Acc = set_combine(sets.precast.WS['Entropy'], {})
	sets.precast.WS['Entropy'].HighAcc = set_combine(sets.precast.WS['Entropy'].HighAcc, {})
	
    -- Insurgency Sets (STR/INT, four hits) --
	sets.precast.WS['Insurgency'] = set_combine(sets.precast.WS, {
	})
	sets.precast.WS['Insurgency'].Acc = set_combine(sets.precast.WS['Insurgency'], {})
	sets.precast.WS['Insurgency'].HighAcc = set_combine(sets.precast.WS['Insurgency'].HighAcc, {})
	
    -- Quietus Sets (STR/MND & WSD+) --
	sets.precast.WS['Quietus'] = set_combine(sets.precast.WS, {
	})
	sets.precast.WS['Quietus'].Acc = set_combine(sets.precast.WS['Quietus'], {})
	sets.precast.WS['Quietus'].HighAcc = set_combine(sets.precast.WS['Quietus'].HighAcc, {})
	
    -- Cross Reaper Sets (STR/MND & WSD+) --
	sets.precast.WS['Cross Reaper'] = set_combine(sets.precast.WS, {
	})
	sets.precast.WS['Cross Reaper'].Acc = set_combine(sets.precast.WS['Cross Reaper'], {})
	sets.precast.WS['Cross Reaper'].HighAcc = set_combine(sets.precast.WS['Cross Reaper'].HighAcc, {})
	
    -- Spinning Scythe Sets (STR & WSD+) --
	sets.precast.WS['Spinning Scythe'] = set_combine(sets.precast.WS, {
	})
	sets.precast.WS['Spinning Scythe'].Acc = set_combine(sets.precast.WS['Spinning Scythe'], {})
	sets.precast.WS['Spinning Scythe'].HighAcc = set_combine(sets.precast.WS['Spinning Scythe'].HighAcc, {})
	
    -- Guillotine Sets (STR/MND) --
	sets.precast.WS['Guillotine'] = set_combine(sets.precast.WS, {
	})	
	sets.precast.WS['Guillotine'].Acc = set_combine(sets.precast.WS['Guillotine'], {})
	sets.precast.WS['Guillotine'].HighAcc = set_combine(sets.precast.WS['Guillotine'].HighAcc, {})
	
    -- Infernal Scythe Sets (MAB/Dark) --
	sets.precast.WS['Infernal Scythe'] = set_combine(sets.precast.WS, {
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
		
	-- Midcast 
	sets.midcast.FastRecast = sets.precast.FC
        
    sets.midcast.Utsusemi = {}
	
	---
	-- Consider using a spellMap to simplify these sets...
	---
	
    -- Magic Attack Bonus Set --
	sets.midcast.MAB = {
	}
	
    -- Magic Accuracy Set --
	sets.midcast.MACC = {
	}
	
	sets.midcast['Dark Magic'] = set_combine(sets.midcast.MACC, {
	})
	
	-- Endark --
	sets.midcast.Endark = {
	}
	-- Dread Spikes --
	sets.midcast['Dread Spikes'] = {
	}

    -- Stun Sets --
	sets.midcast.Stun = set_combine(sets.midcast.MACC,{})
	sets.midcast.Stun.Acc = set_combine(sets.midcast.Stun,{})
	sets.midcast.Stun.HighAcc = set_combine(sets.midcast.Stun.Acc,{})
		
    -- Absorb --
	sets.midcast.Absorb = set_combine(sets.midcast.MACC, {
	})
	
	sets.midcast['Absorb-TP'] = set_combine(sets.midcast.Absorb,{})
	sets.midcast.Drain = set_combine(sets.midcast.MACC, {
	})
	
    -- Enfeebling Magic --
	sets.midcast['Enfeebling Magic'] = set_combine(sets.midcast.MACC, {
	})
	
    -- Elemental Magic --
	sets.midcast['Elemental Magic'] = set_combine(sets.midcast.MAB, {})
	
	-- Enhancing Magic --
	sets.midcast['Enhancing Magic'] = {
	}
	
	sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {waist="Siegel Sash"})

    -- Resting --
    sets.resting = {}
    
    -- Idle --
    sets.idle = {
	}
	
	sets.idle.Refresh = set_combine(sets.idle, {})
	
    sets.idle.Town = set_combine(sets.idle, {})
	
	sets.idle.Field = sets.idle.Town
    
    sets.idle.Weak = {}
    
    -- Defense -- These sets are overlayed over any equipped set, if enabled.
	-- can be used as a panic button by toggling defenseMode
    sets.defense.PDT = {
	}
    sets.defense.MDT = set_combine(sets.defense.PDT, {})

    -- Engaged --
	
	-- If no defined set is available, default sets are chosen.
	-- Set construction is as follows...
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.DefenseMode.CustomMeleeGroups
	-- Hyrbid mode cases are mutually exclusive with Defense Modes, as such:
    -- EG: sets.engaged.CombatForm.CombatWeapon.OffenseMode.HybridMode.CustomMeleeGroups
	
    sets.engaged = {
	}
	
	-- Offense Mode 'Acc'
    sets.engaged.Acc = set_combine(sets.engaged, {
	})
	
	-- Offense Mode 'HighAcc'
    sets.engaged.HighAcc = set_combine(sets.engaged.Acc, {
	})
	
	-- default Hybrid 
	sets.engaged.DT = set_combine(sets.engaged, {})
	sets.engaged.Acc.DT = set_combine(sets.engaged.DT, {})
    sets.engaged.HighAcc.DT = set_combine(sets.engaged.Acc.DT, {})
	
	-- Apocalypse engaged --
	sets.engaged.Apocalypse = set_combine(sets.engaged, {})
	sets.engaged.Apocalypse.Acc = set_combine(sets.engaged.Apocalypse, {})
	sets.engaged.Apocalypse.HighAcc = set_combine(sets.engaged.Apocalypse.Acc, {})
	
	-- Caladbolg engaged --
	sets.engaged.Caladbolg = set_combine(sets.engaged, {})
	sets.engaged.Caladbolg.Acc = set_combine(sets.engaged.Caladbolg, {})
	sets.engaged.Caladbolg.HighAcc = set_combine(sets.engaged.Caladbolg.Acc, {})
	
	-- HepatizonAxe engaged --
	sets.engaged.HepatizonAxe = set_combine(sets.engaged, {})
	sets.engaged.HepatizonAxe.Acc = set_combine(sets.engaged.HepatizonAxe, {})
	sets.engaged.HepatizonAxe.HighAcc = set_combine(sets.engaged.HepatizonAxe.Acc, {})
	
	-- Naegling engaged --
	sets.engaged.Naegling = set_combine(sets.engaged, {})
	sets.engaged.Naegling.Acc = set_combine(sets.engaged.Naegling, {})
	sets.engaged.Naegling.HighAcc = set_combine(sets.engaged.Naegling.Acc, {})

	-- Zulfiqar engaged --
	sets.engaged.Zulfiqar = set_combine(sets.engaged, {})
	sets.engaged.Zulfiqar.Acc = set_combine(sets.engaged.Zulfiqar, {})
	sets.engaged.Zulfiqar.HighAcc = set_combine(sets.engaged.Zulfiqar.Acc, {})
	
	-- Conditional Sets --
	-- Doomed
    sets.buff.Doom = {}
	-- 'Tag' TreasureHunter
    sets.TreasureHunter = {}
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
	sets.LugraLeft = {left_ear="Lugra Earring +1"}
	-- Elemental Sash --
	sets.Obi = {waist="Hachirin-no-Obi"}
	-- Kiting Mode --
    sets.Kiting = {legs="Carmine Cuisses +1"}
	
	-- Weapon sets -- determined by state.WeaponSet
	sets.Apocalypse = {main="Apocalypse",sub="Utu Grip"}
	sets.Caladbolg = {main="Caladbolg",sub="Utu Grip"}
	sets.HepatizonAxe = {main="Hepatizon Axe",sub="Utu Grip"}
	sets.Naegling = {main="Naegling",sub="Reikiko"}
	sets.Zulfiqar = {main="Zulfiqar",sub="Utu Grip"}
		
end
