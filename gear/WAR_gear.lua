function init_gear_sets()

	--place items here to be grabbed when //gs org is run. (requires Organizer)
	organizer_items = {}

	sets.enmity = {}
	
    sets.precast.JA['Aggressor'] = {}
    sets.precast.JA['Berserk'] = {}
    sets.precast.JA['Blood Rage'] = {}
    sets.precast.JA['Brazen Rush'] = {}
    sets.precast.JA['Defender'] = {}
    sets.precast.JA['Mighty Strikes'] = {}
    sets.precast.JA['Provoke'] = {}
    sets.precast.JA['Restraint'] = {}
    sets.precast.JA['Retaliation'] = {}
    sets.precast.JA['Tomahawk'] = {}
    sets.precast.JA['Warcry'] = {}
    sets.precast.JA['Warrior\'s Charge'] = {}
	
			--Define Restraint Hands
    sets.Restraint = {}
	
    sets.precast.FC = {}
    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})


	sets.precast.Tomahawk = {}	
	sets.precast.MightyStrikes = {}	
	
	
	sets.MightyS = {}
    -- Weaponskill sets	
	
	-- Example 'FullTP' set :
	-- sets.precast.WS['Resolution'].FullTP = set_combine(sets.precast.WS['Resolution'],{})
	-- sets.precast.WS['Resolution'].Acc.FullTP = set_combine(sets.precast.WS['Resolution'].Acc,{})
	-- sets.precast.WS['Resolution'].HighAcc.FullTP = set_combine(sets.precast.WS['Resolution'].HighAcc,{})
	
	-- Default WS -- equipped if no gear is specified
    sets.precast.WS = {}
	
	-- Great Axe --
	
	-- Shield Break --		STR 60% / VIT 60%
    sets.precast.WS['Shield Break'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Shield Break'].Acc = set_combine(sets.precast.WS['Shield Break'], {})
	sets.precast.WS['Shield Break'].HighAcc = set_combine(sets.precast.WS['Shield Break'].HighAcc, {})
	
	--Iron Tempest --		STR 60%
    sets.precast.WS['Iron Tempest'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Iron Tempest'].Acc = set_combine(sets.precast.WS['Iron Tempest'], {})
	sets.precast.WS['Iron Tempest'].HighAcc = set_combine(sets.precast.WS['Iron Tempest'].HighAcc, {})

	--Sturmwind --			STR 60%
    sets.precast.WS['Sturmwind'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Sturmwind'].Acc = set_combine(sets.precast.WS['Sturmwind'], {})
	sets.precast.WS['Sturmwind'].HighAcc = set_combine(sets.precast.WS['Sturmwind'].HighAcc, {})
	
	-- Armor Break 			STR 60% / VIT 60%
    sets.precast.WS['Armor Break'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Armor Break'].Acc = set_combine(sets.precast.WS['Armor Break'], {})
	sets.precast.WS['Armor Break'].HighAcc = set_combine(sets.precast.WS['Armor Break'].HighAcc, {})
	
	--Keen Edge 			STR 100%
    sets.precast.WS['Keen Edge'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Keen Edge'].Acc = set_combine(sets.precast.WS['Keen Edge'], {})
	sets.precast.WS['Keen Edge'].HighAcc = set_combine(sets.precast.WS['Keen Edge'].HighAcc, {})
	
	-- Weapon Break			STR 60% VIT 60%
    sets.precast.WS['Weapon Break'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Weapon Break'].Acc = set_combine(sets.precast.WS['Weapon Break'], {})
	sets.precast.WS['Weapon Break'].HighAcc = set_combine(sets.precast.WS['Weapon Break'].HighAcc, {})
	
	-- Raging Rush  		STR 50%
    sets.precast.WS['Raging Rush'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Raging Rush'].Acc = set_combine(sets.precast.WS['Raging Rush'], {})
	sets.precast.WS['Raging Rush'].HighAcc = set_combine(sets.precast.WS['Raging Rush'].HighAcc, {})
    
	-- Full Break 	 		STR 50% / VIT 50%
	sets.precast.WS['Full Break'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Full Break'].Acc = set_combine(sets.precast.WS['Full Break'], {})
	sets.precast.WS['Full Break'].HighAcc = set_combine(sets.precast.WS['Full Break'].HighAcc, {})
	
	-- Steel Cyclone 		STR 60% / VIT 60%
    sets.precast.WS['Steel Cyclone'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Steel Cyclone'].Acc = set_combine(sets.precast.WS['Steel Cyclone'], {})
	sets.precast.WS['Steel Cyclone'].HighAcc = set_combine(sets.precast.WS['Steel Cyclone'].HighAcc, {})
    
	-- Fell Cleave 			STR 60%
	sets.precast.WS['Fell Cleave'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Fell Cleave'].Acc = set_combine(sets.precast.WS['Fell Cleave'], {})
	sets.precast.WS['Fell Cleave'].HighAcc = set_combine(sets.precast.WS['Fell Cleave'].HighAcc, {})
	
	-- Upheaval 			VIT 73% ~ 85%
    sets.precast.WS['Upheaval'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Upheaval'].Acc = set_combine(sets.precast.WS['Upheaval'], {})
	sets.precast.WS['Upheaval'].HighAcc = set_combine(sets.precast.WS['Upheaval'].HighAcc, {})
	sets.precast.WS['Upheaval'].LowTP = set_combine(sets.precast.WS['Upheaval'], {})
	sets.precast.WS['Upheaval'].FullTP = set_combine(sets.precast.WS['Upheaval'], {})
	
	-- Metatron Torment 	STR 80%
    sets.precast.WS['Metatron Torment'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Metatron Torment'].Acc = set_combine(sets.precast.WS['Metatron Torment'], {})
	sets.precast.WS['Metatron Torment'].HighAcc = set_combine(sets.precast.WS['Metatron Torment'].HighAcc, {})
	
	-- Ukko's Fury			STR 80%
    sets.precast.WS["Ukko's Fury"] = set_combine(sets.precast.WS, {})
	sets.precast.WS["Ukko's Fury"].Acc = set_combine(sets.precast.WS["Ukko's Fury"], {})
	sets.precast.WS["Ukko's Fury"].HighAcc = set_combine(sets.precast.WS["Ukko's Fury"].HighAcc, {})
	sets.precast.WS["Ukko's Fury"].FullTP = set_combine(sets.precast.WS["Ukko's Fury"], {})
	
	-- King's Justice		STR 50%
    sets.precast.WS["King's Justice"] = set_combine(sets.precast.WS, {})
	sets.precast.WS["King's Justice"].Acc = set_combine(sets.precast.WS["King's Justice"], {})
	sets.precast.WS["King's Justice"].HighAcc = set_combine(sets.precast.WS["King's Justice"].HighAcc, {})	
	sets.precast.WS["King's Justice"].LowTP = set_combine(sets.precast.WS["King's Justice"], {})
	sets.precast.WS["King's Justice"].FullTP = set_combine(sets.precast.WS["King's Justice"], {})
	
	-- Axe --
	
	-- Raging Axe 			STR 60%
	sets.precast.WS['Raging Axe'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Raging Axe'].Acc = set_combine(sets.precast.WS['Raging Axe'], {})
	sets.precast.WS['Raging Axe'].HighAcc = set_combine(sets.precast.WS['Raging Axe'].HighAcc, {})
	
	-- Smash Axe			STR 100%
	sets.precast.WS['Smash Axe'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Smash Axe'].Acc = set_combine(sets.precast.WS['Smash Axe'], {})
	sets.precast.WS['Smash Axe'].HighAcc = set_combine(sets.precast.WS['Smash Axe'].HighAcc, {})
	
	-- Gale Axe				STR 100%
	sets.precast.WS['Gale Axe'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Gale Axe'].Acc = set_combine(sets.precast.WS['Gale Axe'], {})
	sets.precast.WS['Gale Axe'].HighAcc = set_combine(sets.precast.WS['Gale Axe'].HighAcc, {})
	
	-- Avalanche Axe		STR 60%
	sets.precast.WS['Avalance Axe'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Avalance Axe'].Acc = set_combine(sets.precast.WS['Avalance Axe'], {})
	sets.precast.WS['Avalance Axe'].HighAcc = set_combine(sets.precast.WS['Avalance Axe'].HighAcc, {})
	
	-- Spinning Axe			STR 60%
	sets.precast.WS['Spinning Axe'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Spinning Axe'].Acc = set_combine(sets.precast.WS['Spinning Axe'], {})
	sets.precast.WS['Spinning Axe'].HighAcc = set_combine(sets.precast.WS['Spinning Axe'].HighAcc, {})
	
	-- Rampage				STR 50%
	sets.precast.WS['Rampage'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Rampage'].Acc = set_combine(sets.precast.WS['Rampage'], {})
	sets.precast.WS['Rampage'].HighAcc = set_combine(sets.precast.WS['Rampage'].HighAcc, {})
	
	-- Calamity				STR 50% VIT 50%
	sets.precast.WS['Calamity'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Calamity'].Acc = set_combine(sets.precast.WS['Calamity'], {})
	sets.precast.WS['Calamity'].HighAcc = set_combine(sets.precast.WS['Calamity'].HighAcc, {})
	
	-- Mistral Axe			STR 50%
	sets.precast.WS['Mistral Axe'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Mistral Axe'].Acc = set_combine(sets.precast.WS['Mistral Axe'], {})
	sets.precast.WS['Mistral Axe'].HighAcc = set_combine(sets.precast.WS['Mistral Axe'].HighAcc, {})
	
	-- Decimation			STR 50%
	sets.precast.WS['Decimation'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Decimation'].Acc = set_combine(sets.precast.WS['Decimation'], {})
	sets.precast.WS['Decimation'].HighAcc = set_combine(sets.precast.WS['Decimation'].HighAcc, {})
	
	-- Bora Axe				DEX 100%
	sets.precast.WS['Bora Axe'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Bora Axe'].Acc = set_combine(sets.precast.WS['Bora Axe'], {})
	sets.precast.WS['Bora Axe'].HighAcc = set_combine(sets.precast.WS['Bora Axe'].HighAcc, {})
	
	-- Ruinator				STR 73% ~85%
	sets.precast.WS['Ruinator'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Ruinator'].Acc = set_combine(sets.precast.WS['Ruinator'], {})
	sets.precast.WS['Ruinator'].HighAcc = set_combine(sets.precast.WS['Ruinator'].HighAcc, {})
	
	-- Onslaught			DEX 80%
	sets.precast.WS['Onslaught'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Onslaught'].Acc = set_combine(sets.precast.WS['Onslaught'], {})
	sets.precast.WS['Onslaught'].HighAcc = set_combine(sets.precast.WS['Onslaught'].HighAcc, {})
	
	-- Cloudsplitter		STR 40% MND 40%
	sets.precast.WS['Cloudsplitter'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Cloudsplitter'].Acc = set_combine(sets.precast.WS['Cloudsplitter'], {})
	sets.precast.WS['Cloudsplitter'].HighAcc = set_combine(sets.precast.WS['Cloudsplitter'].HighAcc, {})
	
	-- Raging Fist				STR 30% / DEX 30%
	sets.precast.WS['Raging Fists'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Raging Fists'].Acc = set_combine(sets.precast.WS['Raging Fists'], {})
	sets.precast.WS['Raging Fists'].HighAcc = set_combine(sets.precast.WS['Raging Fists'].HighAcc, {})

	-- Polearm --

	-- Impulse Drive 		STR 100%
	sets.precast.WS['Impulse Drive'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Impulse Drive'].Acc = set_combine(sets.precast.WS['Impulse Drive'], {})
	sets.precast.WS['Impulse Drive'].HighAcc = set_combine(sets.precast.WS['Impulse Drive'].HighAcc, {})
		
	-- Sonic Thrust			STR 40% DEX 40%
	sets.precast.WS['Sonic Thrust'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Sonic Thrust'].Acc = set_combine(sets.precast.WS['Sonic Thrust'], {})
	sets.precast.WS['Sonic Thrust'].HighAcc = set_combine(sets.precast.WS['Sonic Thrust'].HighAcc, {})
	
	
	
	
	-- Resolution		STR 73%-85%
    sets.precast.WS['Resolution'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Resolution'].Acc = set_combine(sets.precast.WS['Rsolution'], {})
	sets.precast.WS['Resolution'].HighAcc = set_combine(sets.precast.WS['Resolution'].HighAcc, {})
	
	-- Spiral Hell 			STR 60%
	sets.precast.WS['Spiral Hell'] = set_combine(sets.precast.WS, {})
	sets.precast.WS['Spiral Hell'].Acc = set_combine(sets.precast.WS['Spiral Hell'], {})
	sets.precast.WS['Spiral Hell'].HighAcc = set_combine(sets.precast.WS['Spiral Hell'].HighAcc, {})
	
	
	

    -- Resting --
    sets.resting = {}
    
    -- Idle --
    sets.idle = {}
	
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
    sets.engaged = {}
		
	-- Acc --
    sets.engaged.Acc = set_combine(sets.engaged, {})

	   
	sets.engaged.Restraint = set_combine(sets.engaged, {})
	
	----------------- BRANCHES OF ENGAGED WEAPON SETS ---------------------
	
	-- Greatsword --
	
	
		-- CombatWeapon Karambit --
	sets.engaged.Karambit = set_combine(sets.engaged, {})
	sets.engaged.Karambit.Acc = set_combine(sets.engaged.Karambit, {})	
	sets.engaged.Karambit.HighAcc = set_combine(sets.engaged.Karambit, sets.engaged.Acc, {})
	
	-- Bravura --
	
	sets.engaged.Bravura = set_combine(sets.engaged, {})
	sets.engaged.Bravura.Acc = set_combine(sets.engaged.Bravura, {})
	sets.engaged.Bravura.HighAcc = set_combine(sets.engaged.Bravura.Acc, {})
	
	
	-- Polearm --
	
	sets.engaged.Polearm = set_combine(sets.engaged, {})
	sets.engaged.Polearm.Acc = set_combine(sets.engaged.Polearm, {})
	sets.engaged.Polearm.HighAcc = set_combine(sets.engaged.Polearm.Acc, {})
	
	
	-- Axe --
	sets.engaged.Axe = set_combine(sets.engaged, {})
	sets.engaged.Axe.Acc = set_combine(sets.engaged.Axe, {})
	sets.engaged.Axe.HighAcc = set_combine(sets.engaged.Axe.Acc, {})
	
	-- Scythe --
	sets.engaged.Scythe = set_combine(sets.engaged, {})
	sets.engaged.Scythe.Acc = set_combine(sets.engaged.Scythe, {})
	sets.engaged.Scythe.HighAcc = set_combine(sets.engaged.Scythe.Acc, {})

	
	
	-- HighAcc --
    sets.engaged.HighAcc = set_combine(sets.engaged.Acc, {})
	
	-- Hybrid --
	sets.engaged.DT = set_combine(sets.engaged, {})
	sets.engaged.Acc.DT = set_combine(sets.engaged.DT, {})
    sets.engaged.HighAcc.DT = set_combine(sets.engaged.Acc.DT, {})

	-- Conditional Sets --
	-- Doomed
    sets.buff.Doom = {}
	-- 'Tag' TreasureHunter
    sets.TreasureHunter = {}
	
	sets.FullTP = {}
	
	-- Capacity point cape	
	sets.CP = {}
	-- Equipped at Night time to left earring --
	sets.Lugra = {}
	-- Elemental Sash --
	sets.Obi = {}
	-- Kiting Mode --
    sets.Kiting = {}
	
	-- Weapon sets -- determined by state.WeaponSet  : Please Note You should customize your sets.Greataxe to whatever weapon you are using. example: sets.Ukonvasara = {} add more if needed.
	sets.GreatAxe = {}

end