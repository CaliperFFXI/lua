-- Blue Magic spellMap sidecar file for use in Mote-Include.lua files
-- Author: Caliper - Asura Server

-- Spells are allocated into the following classes:
-- Physical | Magical | Healing | Breath | MagicAcc | Buff | SkillBuff

-- Once the spell class is determined, it is returned as the following midcast tags:
--[[
    sets.midcast['Blue Magic'] = {}
    sets.midcast['Blue Magic'].Physical = {}
	sets.midcast['Blue Magic'].Magical = {}
    sets.midcast['Blue Magic'].MagicalDark = {}
    sets.midcast['Blue Magic'].MagicalLight = {}
	sets.midcast['Blue Magic'].MagicAcc = {}
    sets.midcast['Blue Magic'].Breath = {}
    sets.midcast['Blue Magic'].Healing = {}
    sets.midcast['Blue Magic'].Buff = {}
    sets.midcast['Blue Magic'].SkillBuff = {}
  ]]
  
-- Spells that are unique in their construction should be handled in a midcast tag, 
-- which prevents their general class from being used.

-- e.g: sets.midcast['Blue Magic']['White Wind'] = {}

-- The following include must be in your job_setup() function:
-- include('BlueMagic_Mappings.lua')

-- The following function must also be present in the job file
-- the function can be kept in this file, however may need to be integrated into other logic
-- depending on user need and preference.

function job_get_spell_map(spell, default_spell_map)
    if spell.skill == 'Blue Magic' then
		local BlueMagicMap = classes.BlueSpellMap[spell.english]
		if BlueMagicMap == 'Magical' then
			--determine light or dark 
			if spell.element == 'Dark' then
				return "MagicalDark"
			elseif spell.element == 'Light' then
				return "MagicalLight"
			else
				return "Magical"
			end
		else
			return BlueMagicMap
		end
	end
end

blue_magic_maps = {
	['1000 Needles'] = 'MagicAcc',
	['Absolute Terror'] = 'MagicAcc',
	['Acrid Stream'] = 'Magical',
	['Actinic Burst'] = 'MagicAcc',
	['Amorphic Spikes'] = 'Physical',
	['Amplification'] = 'Buff',
	['Animating Wail'] = 'Buff',
	['Anvil Lightning'] = 'Magical',
	['Asuran Claws'] = 'Physical',
	['Atra. Libations'] = 'MagicAcc',
	['Auroral Drape'] = 'MagicAcc',
	['Awful Eye'] = 'MagicAcc',
	['Bad Breath'] = 'Breath',
	['Barbed Crescent'] = 'Physical',
	['Barrier Tusk'] = 'SkillBuff',
	['Battery Charge'] = 'Buff',
	['Battle Dance'] = 'Physical',
	['Benthic Typhoon'] = 'Physical',
	['Bilgestorm'] = 'Physical',
	['Blank Gaze'] = 'MagicAcc',
	['Blastbomb'] = 'Magical',
	['Blazing Bound'] = 'Magical',
	['Blinding Fulgor'] = 'Magical',
	['Blistering Roar '] = 'MagicAcc',
	['Blitzstrahl'] = 'Magical',
	['Blood Drain'] = 'Magical',
	['Blood Saber'] = 'MagicAcc',
	['Bloodrake'] = 'Physical',
	['Bludgeon'] = 'Physical',
	['Body Slam'] = 'Physical',
	['Bomb Toss'] = 'Magical',
	['Cannonball'] = 'Physical',
	['Carcharian Verve'] = 'Buff',
	['Cesspool'] = 'Magical',
	['Chaotic Eye'] = 'MagicAcc',
	['Charged Whisker'] = 'Magical',
	['Cimicine Discharge'] = 'MagicAcc',
	['Claw Cyclone'] = 'Physical',
	['Cocoon'] = 'Buff',
	['Cold Wave'] = 'MagicAcc',
	['Corrosive Ooze'] = 'MagicAcc',
	['Crashing Thunder'] = 'Magical',
	['Cruel Joke'] = 'Magical',
	['Cursed Sphere'] = 'Magical',
	['Dark Orb'] = 'Magical',
	['Death Ray'] = 'Magical',
	['Death Scissors'] = 'Physical',
	['Delta Thrust'] = 'Physical',
	['Demoralizing Roar'] = 'MagicAcc',
	['Diamondhide'] = 'SkillBuff',
	['Diffusion Ray'] = 'Magical',
	['Digest'] = 'MagicAcc',
	['Dimensional Death'] = 'Physical',
	['Disseverment'] = 'Physical',
	['Dream Flower'] = 'MagicAcc',
	['Droning Whirlwind'] = 'Magical',
	['Embalming Earth'] = 'Magical',
	['Empty Thrash'] = 'Physical',
	['Enervation'] = 'MagicAcc',
	['Entomb'] = 'Magical',
	['Erratic Flutter'] = 'Buff',
	['Evryone. Grudge'] = 'Magical',
	['Exuviation'] = 'Buff',
	['Eyes On Me'] = 'Magical',
	['Fantod'] = 'Buff',
	['Feather Barrier'] = 'Buff',
	['Feather Storm'] = 'Physical',
	['Feather Tickle'] = 'MagicAcc',
	['Filamented Hold'] = 'MagicAcc',
	['Final Sting'] = 'Physical',
	['Firespit'] = 'Magical',
	['Flying Hip Press'] = 'Breath',
	['Foot Kick'] = 'Physical',
	['Foul Waters'] = 'Magical',
	['Frenetic Rip'] = 'Physical',
	['Frightful Roar'] = 'MagicAcc',
	['Frost Breath'] = 'Breath',
	['Frypan'] = 'Physical',
	['Gates of Hades'] = 'Magical',
	['Geist Wall'] = 'MagicAcc',
	['Glutinous Dart'] = 'Physical',
	['Goblin Rush'] = 'Physical',
	['Grand Slam'] = 'Physical',
	['Harden Shell'] = 'Buff',
	['Head Butt'] = 'Physical',
	['Healing Breeze'] = 'Healing',
	['Heat Breath'] = 'Breath',
	['Heavy Strike'] = 'Physical',
	['Hecatomb Wave'] = 'Breath',
	['Helldive'] = 'Physical',
	['Hydro Shot'] = 'Physical',
	['Hysteric Barrage'] = 'Physical',
	['Ice Break'] = 'Magical',
	['Infrasonics'] = 'MagicAcc',
	['Jet Stream'] = 'Physical',
	['Jettatura'] = 'MagicAcc',
	['Leafstorm'] = 'Magical',
	['Light of Penance'] = 'MagicAcc',
	['Lowing'] = 'MagicAcc',
	['Maelstrom'] = 'Magical',
	['Magic Barrier'] = 'SkillBuff',
	['Magic Fruit'] = 'Healing',
	['Magic Hammer'] = 'Magical',
	['Magnetite Cloud'] = 'Breath',
	['Mandibular Bite'] = 'Physical',
	['Memento Mori'] = 'Buff',
	['Metallic Body'] = 'SkillBuff',
	['Mighty Guard '] = 'Buff',
	['Mind Blast'] = 'MagicAcc',
	['Molting Plumage'] = 'Magical',
	['Mortal Ray'] = 'MagicAcc',
	['MP Drainkiss'] = 'MagicAcc',
	['Mysterious Light'] = 'Magical',
	['Nat. Meditation'] = 'Buff',
	['Nectarous Deluge'] = 'Magical',
	['O. Counterstance'] = 'Buff',
	['Occultation'] = 'SkillBuff',
	['Osmosis'] = 'MagicAcc',
	['Palling Salvo'] = 'Magical',
	['Paralyzing Triad'] = 'Physical',
	['Pinecone Bomb'] = 'Physical',
	['Plasma Charge'] = 'SkillBuff',
	['Plenilune Embrace'] = 'Healing',
	['Poison Breath'] = 'Breath',
	['Polar Roar'] = 'Magical',
	['Pollen'] = 'Healing',
	['Power Attack'] = 'Physical',
	['Pyric Bulwark'] = 'SkillBuff',
	['Quad. Continuum'] = 'Physical',
	['Quadrastrike'] = 'Physical',
	['Queasyshroom'] = 'Physical',
	['Radiant Breath'] = 'Magical',
	['Rail Cannon'] = 'Magical',
	['Ram Charge'] = 'Physical',
	['Reactor Cool'] = 'SkillBuff',
	['Reaving Wind'] = 'MagicAcc',
	['Refueling'] = 'Buff',
	['Regeneration'] = 'Buff',
	['Regurgitation'] = 'Magical',
	['Rending Deluge'] = 'Magical',
	['Restoral'] = 'Healing',
	['Retinal Glare'] = 'Magical',
	['Saline Coat'] = 'Buff',
	['Sandspin'] = 'MagicAcc',
	['Sandspray'] = 'MagicAcc',
	['Saurian Slide'] = 'Physical',
	['Scouring Spate'] = 'Magical',
	['Screwdriver'] = 'Physical',
	['Searing Tempest'] = 'Magical',
	['Seedspray'] = 'Physical',
	['Self-Destruct'] = 'Breath',
	['Sheep Song'] = 'MagicAcc',
	['Sickle Slash'] = 'Physical',
	['Silent Storm'] = 'Magical',
	['Sinker Drill'] = 'Physical',
	['Smite of Rage'] = 'Physical',
	['Soporific'] = 'MagicAcc',
	['Sound Blast'] = 'MagicAcc',
	['Spectral Floe'] = 'Magical',
	['Spinal Cleave'] = 'Physical',
	['Spiral Spin'] = 'Physical',
	['Sprout Smack'] = 'Physical',
	['Stinking Gas'] = 'MagicAcc',
	['Sub-zero Smash'] = 'Physical',
	['Subduction'] = 'Magical',
	['Sudden Lunge'] = 'Physical',
	['Sweeping Gouge'] = 'Physical',
	['Tail Slap'] = 'Physical',
	['Tearing Gust'] = 'Magical',
	['Tem. Upheaval'] = 'Magical',
	['Temporal Shift'] = 'Magical',
	['Tenebral Crush'] = 'Magical',
	['Terror Touch'] = 'Physical',
	['Thermal Pulse'] = 'Magical',
	['Thrashing Assault'] = 'Physical',
	['Thunder Breath'] = 'Breath',
	['Thunderbolt'] = 'Magical',
	['Tourbillion'] = 'Physical',
	['Triumphant Roar'] = 'Buff',
	['Uppercut'] = 'Physical',
	['Uproot'] = 'Magical',
	['Vanity Dive'] = 'Physical',
	['Vapor Spray'] = 'Breath',
	['Venom Shell'] = 'MagicAcc',
	['Vertical Cleave'] = 'Physical',
	['Voracious Trunk'] = 'MagicAcc',
	['Warm-Up'] = 'Buff',
	['Water Bomb'] = 'Magical',
	['Whirl of Rage'] = 'Physical',
	['White Wind'] = 'Healing',
	['Wild Carrot'] = 'Healing',
	['Wild Oats'] = 'Physical',
	['Wind Breath'] = 'Breath',
	['Winds of Promy.'] = 'Buff',
	['Yawn'] = 'MagicAcc',
	['Zephyr Mantle'] = 'Buff'
}
classes.BlueSpellMap = blue_magic_maps


 