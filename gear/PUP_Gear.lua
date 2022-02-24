function init_gear_sets()

    Animators = {}
    Animators.Range = "Animator P II"
    Animators.Melee = "Animator P +1"

    --Adjust to your reforge level
    --Sets up a Key, Value Pair
    Artifact_Foire = {}
    Artifact_Foire.Head_PRegen = "Foire Taj +1"
    Artifact_Foire.Body_WSD_PTank = "Foire Tobe +1"
    Artifact_Foire.Hands_Mane_Overload = "Foire Dastanas +1"
    Artifact_Foire.Legs_PCure = "Foire Churidars +1"
    Artifact_Foire.Feet_Repair_PMagic = "Foire Babouches +1"

    Relic_Pitre = {}
    Relic_Pitre.Head_PRegen = "Pitre Taj +2" --Enhances Optimization
    Relic_Pitre.Body_PTP = "Pitre Tobe +2" --Enhances Overdrive
    Relic_Pitre.Hands_WSD = "Pitre Dastanas +2" --Enhances Fine-Tuning
    Relic_Pitre.Legs_PMagic = "Pitre Churidars +2" --Enhances Ventriloquy
    Relic_Pitre.Feet_PMagic = "Pitre Babouches +1" --Role Reversal

    Empy_Karagoz = {}
    Empy_Karagoz.Head_PTPBonus = "Karagoz Capello"
    Empy_Karagoz.Body_Overload = "Karagoz Farsetto"
    Empy_Karagoz.Hands = "Karagoz Guanti"
    Empy_Karagoz.Legs_Combat = "Karagoz Pantaloni +1"
    Empy_Karagoz.Feet_Tatical = "Karagoz Scarpe +1"

    Visucius = {}
    Visucius.PetDT = {}
    Visucius.PetMagic = {}

    sets.idle = {}

    sets.precast.FC = {}

    sets.midcast = {} -- Can be left empty
    sets.midcast.FastRecast = {} -- Probably broken
    sets.Kiting = {}

    -------------------------------------JA
    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})

    -- Precast sets to enhance JAs
    sets.precast.JA = {} -- Can be left empty
    sets.precast.JA["Tactical Switch"] = {feet = Empy_Karagoz.Feet_Tatical}
    sets.precast.JA["Ventriloquy"] = {legs = Relic_Pitre.Legs_PMagic}
    sets.precast.JA["Role Reversal"] = {feet = Relic_Pitre.Feet_PMagic}
    sets.precast.JA["Overdrive"] = {body = Relic_Pitre.Body_PTP}
    sets.precast.JA["Repair"] = {}
    sets.precast.JA["Maintenance"] = set_combine(sets.precast.JA["Repair"], {})
    sets.precast.JA.Maneuver = {}
    sets.precast.JA["Activate"] = {back = "Visucius's Mantle"}
    sets.precast.JA["Deus Ex Automata"] = sets.precast.JA["Activate"]
    sets.precast.JA["Provoke"] = {}

    -- Waltz set (chr and vit)
    sets.precast.Waltz = {}
    sets.precast.Waltz["Healing Waltz"] = {}

    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {}
    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS["Stringing Pummel"] = set_combine(sets.precast.WS, {})
    sets.precast.WS["Stringing Pummel"].Mod = set_combine(sets.precast.WS, {})
    sets.precast.WS["Victory Smite"] = set_combine(sets.precast.WS, {})
    sets.precast.WS["Shijin Spiral"] = set_combine(sets.precast.WS, {})
    sets.precast.WS["Howling Fist"] = set_combine(sets.precast.WS, {})

	-- Pet is not active / Idle Mode = MasterDT
    sets.idle.MasterDT = {}

	-- Offense Mode = Master / Hybrid Mode = Normal
    sets.engaged.Master = {}

	-- Offense Mode = Master / Hybrid Mode = Acc
    sets.engaged.Master.Acc = {}
    
	-- Offense Mode = Master / Hybrid Mode = TP
    sets.engaged.Master.TP = {}

    --[[
        Offense Mode = Master
        Hybrid Mode = DT
    ]]
    sets.engaged.Master.DT = {}

	-- These sets are designed to be a hybrid of player and pet gear for when you are
	-- fighting along side your pet. Basically gear used here should benefit both the player
	-- and the pet.
	-- Offense Mode = MasterPet / Hybrid Mode = Normal
    sets.engaged.MasterPet = {}
	-- Offense Mode = MasterPet / Hybrid Mode = Acc
    sets.engaged.MasterPet.Acc = {}
	-- Offense Mode = MasterPet / Hybrid Mode = TP
    sets.engaged.MasterPet.TP = {}
	-- Offense Mode = MasterPet / Hybrid Mode = DT
    sets.engaged.MasterPet.DT = {}
	-- Offense Mode = MasterPet / Hybrid Mode = Regen
    sets.engaged.MasterPet.Regen = {}

    -- Magic Midcast
    sets.midcast.Pet = {}
    sets.midcast.Pet.Cure = {}
    sets.midcast.Pet["Healing Magic"] = {}
    sets.midcast.Pet["Elemental Magic"] = {}
    sets.midcast.Pet["Enfeebling Magic"] = {}
    sets.midcast.Pet["Dark Magic"] = {}
    sets.midcast.Pet["Divine Magic"] = {}
    sets.midcast.Pet["Enhancing Magic"] = {}

	-- This set will become default Idle Set when the Pet is Active 
	-- and sets.idle will be ignored
	-- Player = Idle and not fighting / Pet = Idle and not fighting
	-- Idle Mode = Idle
    sets.idle.Pet = {}

	-- If pet is active and you are idle and pet is idle
	-- Player = idle and not fighting / Pet = idle and not fighting
	-- Idle Mode = MasterDT
    sets.idle.Pet.MasterDT = {}

    sets.pet = {} -- Not Used?

    -- Equipped automatically
    sets.pet.Enmity = {}

    -- Activated by Alt+D or F10 if Physical Defense Mode = PetDT
    sets.pet.EmergencyDT = {}

    -- Pet Engaged Sets --
	-- For Technical Users - This is layout of below
	-- sets.idle[idleScope][state.IdleMode][Pet[Engaged]][CustomIdleGroups] 

	-- For Non-Technical Users:
	-- If you the player is not fighting and your pet is fighting the first set that will activate is sets.idle.Pet.Engaged
	-- You can further adjust this by changing the HyrbidMode using Ctrl+F9 to activate the Acc/TP/DT/Regen/Ranged sets
    
	-- Idle Mode = Idle / Hybrid Mode = Normal
	sets.idle.Pet.Engaged = {}
	-- Idle Mode = Idle / Hybrid Mode = Acc
	sets.idle.Pet.Engaged.Acc = {}
	-- Idle Mode = Idle / Hybrid Mode = TP
	sets.idle.Pet.Engaged.TP = {}
	-- Idle Mode = Idle / Hybrid Mode = DT
	sets.idle.Pet.Engaged.DT = {}
	-- Idle Mode = Idle / Hybrid Mode = Regen
	sets.idle.Pet.Engaged.Regen = {}
	-- Idle Mode = Idle / Hybrid Mode = Ranged
    sets.idle.Pet.Engaged.Ranged = set_combine(sets.idle.Pet.Engaged, {legs = Empy_Karagoz.Legs_Combat})

	-- WSNoFTP is the default weaponskill set used.
    sets.midcast.Pet.WSNoFTP = {head = Empy_Karagoz.Head_PTPBonus}

	-- If we have a pet weaponskill that can benefit from WSFTP then this set will be equipped.
    sets.midcast.Pet.WSFTP = {head = Empy_Karagoz.Head_PTPBonus}

	-- Base Weapon Skill Set used by default if no modifier is found
    sets.midcast.Pet.WS = {}
    -- Chimera Ripper, String Clipper
    sets.midcast.Pet.WS["STR"] = set_combine(sets.midcast.Pet.WSNoFTP, {})
    -- Bone crusher, String Shredder
    sets.midcast.Pet.WS["VIT"] = set_combine(sets.midcast.Pet.WSNoFTP, {head = Empy_Karagoz.Head_PTPBonus})
    -- Cannibal Blade
    sets.midcast.Pet.WS["MND"] = set_combine(sets.midcast.Pet.WSNoFTP, {})
    -- Armor Piercer, Armor Shatterer
    sets.midcast.Pet.WS["DEX"] = set_combine(sets.midcast.Pet.WSNoFTP, {})
    -- Arcuballista, Daze
    sets.midcast.Pet.WS["DEXFTP"] = set_combine(sets.midcast.Pet.WSFTP, {head = Empy_Karagoz.Head_PTPBonus})

    -- Town Set
    sets.idle.Town = {}

    -- Resting sets
    sets.resting = {}
    sets.defense.MasterDT = sets.idle.MasterDT
    sets.defense.PetDT = sets.pet.EmergencyDT
    sets.defense.PetMDT = set_combine(sets.pet.EmergencyDT, {})
	
end
