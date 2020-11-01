All of my job and gear files are built around the "Kinematics" framework. (thank you Motenten, wherever you are)
### Kinematics Wiki: https://github.com/Kinematics/GearSwap-Jobs/wiki

### You must rename "Caliper-Globals.lua" to match your characters name.
Additionally, the globals file contains macrobook and lockstyle settings for each job, as well as keybindings.

**Mote-Mappings.lua** , **Mote-Utility.lua**, and **Mote-TreasureHunter.lua** must be replaced in order to get full functionality. 
The original libs files are located in the gearswap\libs folder.
The libs files see regular updates, so it is best to regularly check for updates.

List of features for all jobs...

### Handling of "Hachirin-no-Obi" / "Orpheus's Sash" for matching spells and weaponskills. 
>Location of Logic: 
>Mote-Include.lua
function: handle_elemental_skills(spell,spellMap)
- No additional sets definitions are required.
- If conditions are met correctly, the items will equip appropriately.
- Exceptions: Curing magic, Enspells (in development)

### Handling of basic Ninjitsu Sub-Job actions.
Location of logic: Mote-Utility.lua
function: handle_ninjitsu(spell, spellMap)
- Checks when casting of Utsusemi occurs, if buff exists or is weaker than 2 shadows, action is cancelled.
- Tracks Utsusemi / Sneak / Invis tools, then warns if low.
	
### Cancellation of "conflicting" buffs. (requires "cancel" addon)
Location of logic: Mote-Utility.lua
function: cancel_conflicting_buffs(spell, action, spellMap, eventArgs)
- Checks occur when casting most sneak variations, stoneskin, saber/fan dance.
- If the buffs are up, they will be cancelled, creating the effect of "refreshing" the buff.

### In Devlopment :
- Handling of "Max TP" weaponskilling, to include aeonic and TP bonus weapons.
- Enspell handler
- Ammo Handlers for ranged jobs

Design Philosophy:
- Maintain player engagement, while improving quality of life.
- Centralize common functionality, leaving job specific functions to their respective files.
- Find the simplest solution to complex gearing situations.
- Maintain readability and logical flow of job and job_gear files.
