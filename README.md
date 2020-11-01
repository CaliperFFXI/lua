All of my job and gear files are built around the "Kinematics" framework. (thank you Motenten, wherever you are)
### Kinematics Wiki: https://github.com/Kinematics/GearSwap-Jobs/wiki

### You must rename "Caliper-Globals.lua" to match your characters name.
Additionally, the globals file contains macrobook and lockstyle settings for each job, as well as keybindings.

**Mote-Mappings.lua** , **Mote-Utility.lua**, and **Mote-TreasureHunter.lua** must be replaced in order to get full functionality. 
The original libs files are located in the gearswap\libs folder.
The libs files see regular updates, so it is best to regularly check for updates.

List of features...

Handling of "Hachirin-no-Obi" / "Orpheus's Sash" for matching spells and weaponskills. 
Location of Logic: Mote-Include.lua
function: handle_elemental_skills(spell,spellMap)
	a.) No additional sets definitions are required.
	b.) If conditions are met correctly, the items will equip appropriately.
	c.) Exceptions: Curing magic, Enspells (in development)

Handling of basic Ninjitsu Sub-Job actions.
Location of logic: Mote-Utility.lua
function: handle_ninjitsu(spell, spellMap)
	a.) Checks when casting of Utsusemi occurs, if buff exists or is weaker than 2 shadows, action is cancelled.
	b.) Tracks Utsusemi / Sneak / Invis tools, then warns if low.
	
Cencellation of "conflicting" buffs. (requires "cancel" addon)
Location of logic: Mote-Utility.lua
function: cancel_conflicting_buffs()
	a.) Checks occur when casting most sneak variations, stoneskin, saber/fan dance.
	b.) If the buffs are up, they will be cancelled, creating the effect of "refreshing" the buff.


Design Philosophy:
  1.) Maintain player engagement, while improving quality of life.
  2.) Centralize common functionality, leaving job specific functions to their respective files.
  3.) Find the simplest solution to complex gearing situations.
  4.) Maintain readability and logical flow of job and job_gear files.
