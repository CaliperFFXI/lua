-------------------------------------------------------------------------------------------------------------------
-- Mappings, lists and sets to describe game relationships that aren't easily determinable otherwise.
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- Elemental mappings for element relationships and certain types of spells and gear.
-------------------------------------------------------------------------------------------------------------------

-- Basic elements
elements = {}

elements.list = S{'Light','Dark','Fire','Ice','Wind','Earth','Lightning','Water'}

elements.weak_to = {['Light']='Dark', ['Dark']='Light', ['Fire']='Ice', ['Ice']='Wind', ['Wind']='Earth', ['Earth']='Lightning',
        ['Lightning']='Water', ['Water']='Fire'}

elements.strong_to = {['Light']='Dark', ['Dark']='Light', ['Fire']='Water', ['Ice']='Fire', ['Wind']='Ice', ['Earth']='Wind',
        ['Lightning']='Earth', ['Water']='Lightning'}

storms = S{"Aurorastorm", "Voidstorm", "Firestorm", "Sandstorm", "Rainstorm", "Windstorm", "Hailstorm", "Thunderstorm",
		"Aurorastorm II", "Voidstorm II", "Firestorm II", "Sandstorm II", "Rainstorm II", "Windstorm II", "Hailstorm II", "Thunderstorm II"}

elements.storm_of = {['Light']="Aurorastorm", ['Dark']="Voidstorm", ['Fire']="Firestorm", ['Earth']="Sandstorm",
        ['Water']="Rainstorm", ['Wind']="Windstorm", ['Ice']="Hailstorm", ['Lightning']="Thunderstorm",['Light']="Aurorastorm II",
		['Dark']="Voidstorm II", ['Fire']="Firestorm II", ['Earth']="Sandstorm II", ['Water']="Rainstorm II", ['Wind']="Windstorm II",
		['Ice']="Hailstorm II", ['Lightning']="Thunderstorm II"}

spirits = S{"LightSpirit", "DarkSpirit", "FireSpirit", "EarthSpirit", "WaterSpirit", "AirSpirit", "IceSpirit", "ThunderSpirit"}
elements.spirit_of = {['Light']="Light Spirit", ['Dark']="Dark Spirit", ['Fire']="Fire Spirit", ['Earth']="Earth Spirit",
        ['Water']="Water Spirit", ['Wind']="Air Spirit", ['Ice']="Ice Spirit", ['Lightning']="Thunder Spirit"}

runes = S{'Lux', 'Tenebrae', 'Ignis', 'Gelus', 'Flabra', 'Tellus', 'Sulpor', 'Unda'}
elements.rune_of = {['Light']='Lux', ['Dark']='Tenebrae', ['Fire']='Ignis', ['Ice']='Gelus', ['Wind']='Flabra',
     ['Earth']='Tellus', ['Lightning']='Sulpor', ['Water']='Unda'}

elements.obi_of = {['Light']='Hachirin-no-obi', ['Dark']='Hachirin-no-obi', ['Fire']='Hachirin-no-obi', ['Ice']='Hachirin-no-obi', ['Wind']='Hachirin-no-obi',
     ['Earth']='Hachirin-no-obi', ['Lightning']='Hachirin-no-obi', ['Water']='Hachirin-no-obi'}
 
elements.gorget_of = {['Light']='Fotia Gorget', ['Dark']='Fotia Gorget', ['Fire']='Fotia Gorget', ['Ice']='Fotia Gorget',
    ['Wind']='Fotia Gorget', ['Earth']='Fotia Gorget', ['Lightning']='Fotia Gorget', ['Water']='Fotia Gorget'}
 
elements.belt_of = {['Light']='Fotia Belt', ['Dark']='Fotia Belt', ['Fire']='Fotia Belt', ['Ice']='Fotia Belt',
    ['Wind']='Fotia Belt', ['Earth']='Fotia Belt', ['Lightning']='Fotia Belt', ['Water']='Fotia Belt'}

elements.fastcast_staff_of = {['Light']='Arka I', ['Dark']='Xsaeta I', ['Fire']='Atar I', ['Ice']='Vourukasha I',
    ['Wind']='Vayuvata I', ['Earth']='Vishrava I', ['Lightning']='Apamajas I', ['Water']='Haoma I', ['Thunder']='Apamajas I'}

elements.recast_staff_of = {['Light']='Arka II', ['Dark']='Xsaeta II', ['Fire']='Atar II', ['Ice']='Vourukasha II',
    ['Wind']='Vayuvata II', ['Earth']='Vishrava II', ['Lightning']='Apamajas II', ['Water']='Haoma II', ['Thunder']='Apamajas II'}

elements.perpetuance_staff_of = {['Light']='Arka III', ['Dark']='Xsaeta III', ['Fire']='Atar III', ['Ice']='Vourukasha III',
    ['Wind']='Vayuvata III', ['Earth']='Vishrava III', ['Lightning']='Apamajas III', ['Water']='Haoma III', ['Thunder']='Apamajas III'}

enspells = {	
	['Enfire']='Fire',
	['Enfire II']='Fire',
	['Enblizzard']='Ice',
	['Enblizzard II']='Ice',
	['Enaero']='Wind',
	['Enaero II']='Wind',
	['Enstone']='Earth',
	['Enstone II']='Earth',
	['Enthunder']='Lightning',
	['Enthunder II']='Lightning',
	['Enwater']='Water',
	['Enwater II']='Water',
}

-- Elements for skillchain names
skillchain_elements = {}
skillchain_elements.Light = S{'Light','Fire','Wind','Lightning'}
skillchain_elements.Darkness = S{'Dark','Ice','Earth','Water'}
skillchain_elements.Fusion = S{'Light','Fire'}
skillchain_elements.Fragmentation = S{'Wind','Lightning'}
skillchain_elements.Distortion = S{'Ice','Water'}
skillchain_elements.Gravitation = S{'Dark','Earth'}
skillchain_elements.Transfixion = S{'Light'}
skillchain_elements.Compression = S{'Dark'}
skillchain_elements.Liquification = S{'Fire'}
skillchain_elements.Induration = S{'Ice'}
skillchain_elements.Detonation = S{'Wind'}
skillchain_elements.Scission = S{'Earth'}
skillchain_elements.Impaction = S{'Lightning'}
skillchain_elements.Reverberation = S{'Water'}


-------------------------------------------------------------------------------------------------------------------
-- Mappings for weaponskills
-------------------------------------------------------------------------------------------------------------------

-- REM weapons and their corresponding weaponskills
data = {}
data.weaponskills = {}
data.weaponskills.relic = {
    ["Spharai"] = "Final Heaven",
    ["Mandau"] = "Mercy Stroke",
    ["Excalibur"] = "Knights of Round",
    ["Ragnarok"] = "Scourge",
    ["Guttler"] = "Onslaught",
    ["Bravura"] = "Metatron Torment",
    ["Apocalypse"] = "Catastrophe",
    ["Gungnir"] = "Gierskogul",
    ["Kikoku"] = "Blade: Metsu",
    ["Amanomurakumo"] = "Tachi: Kaiten",
    ["Mjollnir"] = "Randgrith",
    ["Claustrum"] = "Gates of Tartarus",
    ["Annihilator"] = "Coronach",
    ["Yoichinoyumi"] = "Namas Arrow"}
data.weaponskills.mythic = {
    ["Conqueror"] = "King's Justice",
    ["Glanzfaust"] = "Ascetic's Fury",
    ["Yagrush"] = "Mystic Boon",
    ["Laevateinn"] = "Vidohunir",
    ["Murgleis"] = "Death Blossom",
    ["Vajra"] = "Mandalic Stab",
    ["Burtgang"] = "Atonement",
    ["Liberator"] = "Insurgency",
    ["Aymur"] = "Primal Rend",
    ["Carnwenhan"] = "Mordant Rime",
    ["Gastraphetes"] = "Trueflight",
    ["Kogarasumaru"] = "Tachi: Rana",
    ["Nagi"] = "Blade: Kamu",
    ["Ryunohige"] = "Drakesbane",
    ["Nirvana"] = "Garland of Bliss",
    ["Tizona"] = "Expiacion",
    ["Death Penalty"] = "Leaden Salute",
    ["Kenkonken"] = "Stringing Pummel",
    ["Terpsichore"] = "Pyrrhic Kleos",
    ["Tupsimati"] = "Omniscience",
    ["Idris"] = "Exudation",
    ["Epeolatry"] = "Dimidiation"}
data.weaponskills.empyrean = {
    ["Verethragna"] = "Victory Smite",
    ["Twashtar"] = "Rudra's Storm",
    ["Almace"] = "Chant du Cygne",
    ["Caladbolg"] = "Torcleaver",
    ["Farsha"] = "Cloudsplitter",
    ["Ukonvasara"] = "Ukko's Fury",
    ["Redemption"] = "Quietus",
    ["Rhongomiant"] = "Camlann's Torment",
    ["Kannagi"] = "Blade: Hi",
    ["Masamune"] = "Tachi: Fudo",
    ["Gambanteinn"] = "Dagann",
    ["Hvergelmir"] = "Myrkr",
    ["Gandiva"] = "Jishnu's Radiance",
    ["Armageddon"] = "Wildfire"}
	
	
--Table of 1000 TP bonus Weapons, used to check max TP values	
magian_weapons = S{
	"Sparrowhawk +2",
	"Makhila +2",
	"Anarchy +2",
	"Uzura +2",
	"Renaud's Axe +2",
	"Machaera +2",
	"Fusetta +2"
}	
	
--Table of 500 TP bonus Aeonic Weapons, used to check max TP values.	
aeonic_weapons = S{
	"Godhands",
	"Aeneas",
	"Sequence",
	"Lionheart",
	"Tri-Edge",
	"Chango",
	"Anguta",
	"Trishula",
	"Heishi Shorinken",
	"Dojikiri Yasutsuna",
	"Tishtrya",
	"Khatvanga",
	"Fail-Not",
	"Fomalhaut"
}	
	
	
-- Table of elemental WS, for use with elemental Obi under the effect of day/weather.	
elemental_ws = S{"Sanguine Blade","Seraph Blade","Aeolian Edge","Trueflight","Leaden Salute", "Flaming Arrow",
				"Wildfire"}
-- Weaponskills that can be used at range.
data.weaponskills.ranged = S{"Flaming Arrow", "Piercing Arrow", "Dulling Arrow", "Sidewinder", "Arching Arrow",
    "Empyreal Arrow", "Refulgent Arrow", "Apex Arrow", "Namas Arrow", "Jishnu's Radiance",
    "Hot Shot", "Split Shot", "Sniper Shot", "Slug Shot", "Heavy Shot", "Detonator", "Last Stand",
    "Coronach", "Trueflight", "Leaden Salute", "Wildfire",
    "Myrkr"}
	

				
ranged_weapons = {
	["Gastraphetes"]='Marksmanship',
	["Fomalhaut"]='Marksmanship',
	["Armageddon"]='Marksmanship',
	["Annihilator"]='Marksmanship',
	["Fail-Not"]='Archery',
	["Gandiva"]='Archery',
	["Yoichinoyumi"]='Archery',
	["Sparrowhawk +2"]='Archery',
}
ranged_weaponskills = data.weaponskills.ranged

abyssea_procs = {
['Dagger'] = 		{red="Wind - Cyclone | Dark - Energy Drain"},
['Sword'] =			{red="Fire - Red Lotus Blade | Light - Seraph Blade"},
['GreatSword'] =	{red="Ice - FreezeBite"},
['Scythe'] =		{red="Dark - Shadow of Death"},
['Polearm'] = 		{red="Lightning - Raiden Thrust"},
['Katana'] =		{red="Dark - Blade: Ei"},
['GreatKatana'] =	{red="Wind - Tachi: Jinpu | Light - Tachi: Koki"},
['Club'] =			{red="Light - Seraph Strike"},
['Staff'] =			{red="Earth - Earth Crusher | Light - Sunburst"},
}

-------------------------------------------------------------------------------------------------------------------
-- Spell mappings allow defining a general category or description that each of sets of related
-- spells all fall under.
-------------------------------------------------------------------------------------------------------------------

spell_maps = {
	["Absorb-Acc"]='Absorb',
	["Absorb-Agi"]='Absorb',
	["Absorb-Attri"]='Absorb',
	["Absorb-Chr"]='Absorb',
	["Absorb-Dex"]='Absorb',
	["Absorb-Int"]='Absorb',
	["Absorb-Mnd"]='Absorb',
	["Absorb-Str"]='Absorb',
	["Absorb-TP"]='Absorb',
	["Absorb-Vit"]='Absorb',
	
	["Aspir II"]='Aspir',
	["Aspir"]='Aspir',
	
	["Mage's Ballad II"]='Ballad',
	["Mage's Ballad III"]='Ballad',
	["Mage's Ballad"]='Ballad',
	
	["Banish II"]='Banish',
	["Banish III"]='Banish',
	["Banish"]='Banish',
	["Banishga II"]='Banish',
	["Banishga"]='Banish',
	
	["Baraera"]='BarElement',
	["Baraero"]='BarElement',
	["Barblizzara"]='BarElement',
	["Barblizzard"]='BarElement',
	["Barfira"]='BarElement',
	["Barfire"]='BarElement',
	["Barstone"]='BarElement',
	["Barstonra"]='BarElement',
	["Barthunder"]='BarElement',
	["Barthundra"]='BarElement',
	["Barwater"]='BarElement',
	["Barwatera"]='BarElement',
	
	["Baramnesia"]='BarStatus',
	["Baramnesra"]='BarStatus',
	["Barblind"]='BarStatus',
	["Barblindra"]='BarStatus',
	["Barparalyze"]='BarStatus',
	["Barparalyzra"]='BarStatus',
	["Barpetra"]='BarStatus',
	["Barpetrify"]='BarStatus',
	["Barpoison"]='BarStatus',
	["Barpoisonra"]='BarStatus',
	["Barsilence"]='BarStatus',
	["Barsilencera"]='BarStatus',
	["Barsleep"]='BarStatus',
	["Barsleepra"]='BarStatus',
	["Barvira"]='BarStatus',
	["Barvirus"]='BarStatus',

	["Boost-AGI"]='BoostStat',
	["Boost-CHR"]='BoostStat',
	["Boost-DEX"]='BoostStat',
	["Boost-INT"]='BoostStat',
	["Boost-MND"]='BoostStat',
	["Boost-STR"]='BoostStat',
	["Boost-VIT"]='BoostStat',
		
	["Ice Carol II"]='Carol',
	["Ice Carol"]='Carol',
	["Dark Carol II"]='Carol',
	["Dark Carol"]='Carol',
	["Earth Carol II"]='Carol',
	["Earth Carol"]='Carol',
	["Fire Carol II"]='Carol',
	["Fire Carol"]='Carol',
	["Light Carol II"]='Carol',
	["Light Carol"]='Carol',
	["Lightning Carol II"]='Carol',
	["Lightning Carol"]='Carol',
	["Water Carol II"]='Carol',
	["Water Carol"]='Carol',
	["Wind Carol II"]='Carol',
	["Wind Carol"]='Carol',
	
	["Cura II"]='Curaga',
	["Cura III"]='Curaga',
	["Curaga II"]='Curaga',
	["Curaga III"]='Curaga',
	["Curaga IV"]='Curaga',
	["Curaga V"]='Curaga',
    ["Cura"]='Curaga',
    ["Curaga"]='Curaga',
	
	["Cure II"]='Cure',
	["Cure III"]='Cure',
	["Cure IV"]='Cure',
	["Cure V"]='Cure',
	["Cure VI"]='Cure',
    ["Cure"]='Cure',
    ["Full Cure"]='Cure',
	
	["Drain II"]='Drain',
	["Drain III"]='Drain',
	["Drain"]='Drain',

	["Dia II"]='EffectEnfeeble',
	["Dia III"]='EffectEnfeeble',
	["Dia"]='EffectEnfeeble',
	["Diaga	"]='EffectEnfeeble',
	
	["Battlefield Elegy"]='Elegy',
	["Carnage Elegy"]='Elegy',
	
	["Burn"]='ElementalEnfeeble',
	["Choke"]='ElementalEnfeeble',
	["Drown"]='ElementalEnfeeble',
	["Frost"]='ElementalEnfeeble',
	["Rasp"]='ElementalEnfeeble',
	["Shock"]='ElementalEnfeeble',
	
	["Doton: Ichi"]='ElementalNinjutsu',
	["Doton: Ni"]='ElementalNinjutsu',
	["Doton: San"]='ElementalNinjutsu',
	["Huton: Ichi"]='ElementalNinjutsu',
	["Huton: Ni"]='ElementalNinjutsu',
	["Huton: San"]='ElementalNinjutsu',
	["Katon: Ichi"]='ElementalNinjutsu',
	["Katon: Ni"]='ElementalNinjutsu',
	["Katon: San"]='ElementalNinjutsu',
	["Hyoton: Ichi"]='ElementalNinjutsu',
	["Hyoton: Ni"]='ElementalNinjutsu',
	["Hyoton: San"]='ElementalNinjutsu',
	["Raiton: Ichi"]='ElementalNinjutsu',
	["Raiton: Ni"]='ElementalNinjutsu',
	["Raiton: San"]='ElementalNinjutsu',
	["Suiton: Ichi"]='ElementalNinjutsu',
	["Suiton: Ni"]='ElementalNinjutsu',
	["Suiton: San"]='ElementalNinjutsu',

	["Dispel"]='Enfeeble',
	["Dispelga"]='Enfeeble',
	["Distract II"]='Enfeeble',
	["Distract"]='Enfeeble',
	["Break"]='Enfeeble',
	["Breakga"]='Enfeeble',
	["Bind"]='Enfeeble',
	["Blind II"]='Enfeeble',
	["Blind"]='Enfeeble',
	["Addle II"]='Enfeeble',
	["Addle"]='Enfeeble',
	["Frazzle II"]='Enfeeble',
	["Frazzle"]='Enfeeble',
	["Gravity II"]='Enfeeble',
	["Gravity"]='Enfeeble',
	["Paralyze II"]='Enfeeble',
	["Paralyze"]='Enfeeble',
	["Inundation"]='Enfeeble',
	["Poison"]='Enfeeble',
	["Poisonga"]='Enfeeble',
	["Sleep II"]='Enfeeble',
	["Sleep"]='Enfeeble',
	["Sleepga II"]='Enfeeble',
	["Sleepga"]='Enfeeble',
	["Slow II"]='Enfeeble',
	["Slow"]='Enfeeble',
	["Silence"]='Enfeeble',
	
	["Auspice"]='Enhancing',
	["Animus Augeo"]='Enhancing',
	["Animus Minuo"]='Enhancing',
	["Aquaveil"]='Enhancing',
	["Adloquium"]='Adloquium',
	["Blaze Spikes"]='Enhancing',
	["Blink"]='Enhancing',
	["Embrava"]='Enhancing',
	["Phalanx II"]='Enhancing',
	["Phalanx"]='Enhancing',
	["Deodorize"]='Enhancing',
	["Crusade"]='Enhancing',
	["Foil"]='Enhancing',
	["Invisible"]='Enhancing',
	["Ice Spikes"]='Enhancing',
	["Reprisal"]='Enhancing',
	["Shock Spikes"]='Enhancing',
	["Sneak"]='Enhancing',
	["Stoneskin"]='Enhancing',
	
	["Enaero II"]='EnhancingSkill',
	["Enaero"]='EnhancingSkill',
	["Enblizzard II"]='EnhancingSkill',
	["Enblizzard"]='EnhancingSkill',
	["Enstone II"]='EnhancingSkill',
	["Enstone"]='EnhancingSkill',
	["Enthunder II"]='EnhancingSkill',
	["Enthunder"]='EnhancingSkill',
	["Enwater II"]='EnhancingSkill',
	["Enwater"]='EnhancingSkill',
	["Enfire II"]='EnhancingSkill',
	["Enfire"]='EnhancingSkill',
	["Temper II"]='EnhancingSkill',
	["Temper"]='EnhancingSkill',
	
	["Endark II"]='Endark',
	["Endark"]='Endark',
	
	["Enlight II"]='Enlight',
	["Enlight"]='Enlight',
	
	["Bewitching Etude"]='Etude',
	["Dextrous Etude"]='Etude',
	["Enchanting Etude"]='Etude',
	["Herculean Etude"]='Etude',
	["Learned Etude"]='Etude',
	["Logical Etude"]='Etude',
	["Quick Etude"]='Etude',
	["Sage Etude"]='Etude',
	["Sinewy Etude"]='Etude',
	["Spirited Etude"]='Etude',
	["Swift Etude"]='Etude',
	["Uncanny Etude"]='Etude',
	["Vital Etude"]='Etude',
	["Vivacious Etude"]='Etude',
	
	["Flurry II"]='Flurry',	
	["Flurry"]='Flurry',
	
	["Gain-AGI"]='GainStat',
	["Gain-CHR"]='GainStat',
	["Gain-DEX"]='GainStat',
	["Gain-INT"]='GainStat',
	["Gain-MND"]='GainStat',
	["Gain-STR"]='GainStat',
	["Gain-VIT"]='GainStat',	
	
	["Haste II"]='Haste',
	["Haste"]='Haste',
	
	["Anemohelix II"]='Helix',
	["Anemohelix"]='Helix',
	["Cryohelix II"]='Helix',
	["Cryohelix"]='Helix',
	["Geohelix II"]='Helix',
	["Geohelix"]='Helix',
	["Hydrohelix II"]='Helix',
	["Hydrohelix"]='Helix',
	["Ionohelix II"]='Helix',
	["Ionohelix"]='Helix',
	["Luminohelix II"]='Helix',
	["Luminohelix"]='Helix',
	["Noctohelix II"]='Helix',
	["Noctohelix"]='Helix',
	["Pyrohelix II"]='Helix',
	["Pyrohelix"]='Helix',	
	
	["Holy II"]='Holy',
	["Holy"]='Holy',
	
	["Impact"]='Impact',
	
	["Foe Lullaby II"]='Lullaby',
	["Foe Lullaby"]='Lullaby',
	["Horde Lullaby II"]='Lullaby',
	["Horde Lullaby"]='Lullaby',
	
	["Blade Madrigal"]='Madrigal',
	["Sword Madrigal"]='Madrigal',
	
	["Dark Maneuver"]='Maneuver',
	["Earth Maneuver"]='Maneuver',
	["Fire Maneuver"]='Maneuver',
	["Ice Maneuver"]='Maneuver',
	["Light Maneuver"]='Maneuver',
	["Wind Maneuver"]='Maneuver',
	["Thunder Maneuver"]='Maneuver',
	["Water Maneuver"]='Maneuver',
	
	["Dragonfoe Mambo"]='Mambo',
	["Sheepfoe Mambo"]='Mambo',
	
	["Victory March"]='March',
    ["Advancing March"]='March',
	
	["Chocobo Mazurka"]='Mazurka',
	["Raptor Mazurka"]='Mazurka',
	
    ["Knight's Minne"]='Minne',
	["Knight's Minne II"]='Minne',
	["Knight's Minne III"]='Minne',
	["Knight's Minne IV"]='Minne',
	["Knight's Minne V"]='Minne',
	
	["Valor Minuet II"]='Minuet',
	["Valor Minuet III"]='Minuet',
	["Valor Minuet IV"]='Minuet',
	["Valor Minuet V"]='Minuet',
    ["Valor Minuet"]='Minuet',
	
	["Army's Paeon II"]='Paeon',
	["Army's Paeon III"]='Paeon',
	["Army's Paeon IV"]='Paeon',
	["Army's Paeon V"]='Paeon',
	["Army's Paeon VI"]='Paeon',
	["Army's Paeon"]='Paeon',
	
	["Archer's Prelude"]='Prelude',
	["Hunter's Prelude"]='Prelude',
	
	["Protect II"]='Protect',
	["Protect III"]='Protect',
	["Protect IV"]='Protect',
	["Protect V"]='Protect',
	["Protect"]='Protect',
	["Protectra II"]='Protect',
	["Protectra III"]='Protect',
	["Protectra IV"]='Protect',
	["Protectra V"]='Protect',
	["Protectra"]='Protect',
	
	["Arise"]='Raise',
	["Raise II"]='Raise',
	["Raise III"]='Raise',
    ["Raise"]='Raise',
	
	["Refresh II"]='Refresh',
	["Refresh III"]='Refresh',
	["Refresh"]='Refresh',
	
    ["Regen"]='Regen',
	["Regen II"]='Regen',
	["Regen III"]='Regen',
	["Regen IV"]='Regen',
	["Regen V"]='Regen',
	
	["Foe Requiem II"]='Requiem',
	["Foe Requiem III"]='Requiem',
	["Foe Requiem IV"]='Requiem',
	["Foe Requiem V"]='Requiem',
	["Foe Requiem VI"]='Requiem',
	["Foe Requiem VII"]='Requiem',
	["Foe Requiem"]='Requiem',
	
	["Reraise"]='Reraise',
	["Reraise II"]='Reraise',
	["Reraise III"]='Reraise',
	["Reraise IV"]='Reraise',
	
	["Shell II"]='Shell',
	["Shell III"]='Shell',
	["Shell IV"]='Shell',
	["Shell IV"]='Shell',
	["Shell V"]='Shell',
	["Shell"]='Shell',
	["Shellra II"]='Shell',
	["Shellra III"]='Shell',
	["Shellra IV"]='Shell',
	["Shellra V"]='Shell',
	["Shellra"]='Shell',
	
	["Poison II"]='SkillEnfeeble',
	["Distract III"]='SkillEnfeeble',
	["Frazzle III"]='SkillEnfeeble',
	
	["Blindna"]='StatusRemoval',
	["Cursna"]='StatusRemoval',
	["Erase"]='StatusRemoval',
	["Paralyna"]='StatusRemoval',
	["Silena"]='StatusRemoval',
    ["Poisona"]='StatusRemoval',
	["Viruna"]='StatusRemoval',
    ["Stona"]='StatusRemoval',
	
	["Aurorastorm II"]='Storm',
	["Aurorastorm"]='Storm',
	["Firestorm II"]='Storm',
	["Firestorm"]='Storm',
	["Hailstorm II"]='Storm',
	["Hailstorm"]='Storm',
	["Rainstorm II"]='Storm',
	["Rainstorm"]='Storm',
	["Sandstorm II"]='Storm',
	["Sandstorm"]='Storm',
	["Thunderstorm II"]='Storm',
	["Thunderstorm"]='Storm',
	["Voidstorm II"]='Storm',
	["Voidstorm"]='Storm',
	["Windstorm II"]='Storm',
	["Windstorm"]='Storm',
	
	["Escape"]='Teleport',
	["Recall-Jugner"]='Teleport',
	["Recall-Meriph"]='Teleport',
	["Recall-Pashh"]='Teleport',
	["Teleport-Altep"]='Teleport',
	["Teleport-Dem"]='Teleport',
	["Teleport-Holla"]='Teleport',
	["Teleport-Mea"]='Teleport',
	["Teleport-Vahzl"]='Teleport',
	["Teleport-Yhoat"]='Teleport',
	["Retrace"]='Teleport',
	["Warp II"]='Teleport',
	["Warp"]='Teleport',
	
	["Earth Threnody II"]='Threnody',
	["Earth Threnody"]='Threnody',
	["Dark Threnody II"]='Threnody',
	["Dark Threnody"]='Threnody',
	["Fire Threnody II"]='Threnody',
	["Fire Threnody"]='Threnody',
	["Ice Threnody II"]='Threnody',
	["Ice Threnody"]='Threnody',
	["Light Threnody II"]='Threnody',
	["Light Threnody"]='Threnody',
	["Lightning Threnody II"]='Threnody',
	["Lightning Threnody"]='Threnody',
	["Water Threnody II"]='Threnody',
	["Water Threnody"]='Threnody',
	["Wind Threnody II"]='Threnody',
	["Wind Threnody"]='Threnody',
	
	["Utsusemi: Ichi"]='Utsusemi',
	["Utsusemi: Ni"]='Utsusemi',
	["Utsusemi: San"]='Utsusemi',
}

no_skill_spells_list = S{--[['Haste', 'Refresh', 'Regen', 'Protect', 'Protectra', 'Shell', 'Shellra',
        'Raise', 'Reraise', 'Sneak', 'Invisible', 'Deodorize']]}


-------------------------------------------------------------------------------------------------------------------
-- Tables to specify general area groupings.  Creates the 'areas' table to be referenced in job files.
-- Zone names provided by world.area/world.zone are currently in all-caps, so defining the same way here.
-------------------------------------------------------------------------------------------------------------------

areas = {}

-- City areas for town gear and behavior.
areas.Cities = S{
    "Ru'Lude Gardens",
    "Upper Jeuno",
    "Lower Jeuno",
    "Port Jeuno",
    "Port Windurst",
    "Windurst Waters",
    "Windurst Woods",
    "Windurst Walls",
    "Heavens Tower",
    "Port San d'Oria",
    "Northern San d'Oria",
    "Southern San d'Oria",
    "Port Bastok",
    "Bastok Markets",
    "Bastok Mines",
    "Metalworks",
    "Aht Urhgan Whitegate",
    "Tavnazian Safehold",
    "Nashmau",
    "Selbina",
    "Mhaura",
    "Norg",
    "Eastern Adoulin",
    "Western Adoulin",
    "Kazham",
    "Rabao",
    "Chocobo Circuit",
}
-- Adoulin areas, where Ionis will grant special stat bonuses.
areas.Adoulin = S{
    "Yahse Hunting Grounds",
    "Ceizak Battlegrounds",
    "Foret de Hennetiel",
    "Morimar Basalt Fields",
    "Yorcia Weald",
    "Yorcia Weald [U]",
    "Cirdas Caverns",
    "Cirdas Caverns [U]",
    "Marjami Ravine",
    "Kamihr Drifts",
    "Sih Gates",
    "Moh Gates",
    "Dho Gates",
    "Woh Gates",
    "Rala Waterways",
    "Rala Waterways [U]",
    "Outer Ra'Kaznar",
    "Outer Ra'Kaznar [U]"
}

-------------------------------------------------------------------------------------------------------------------
-- Lists of certain NPCs. (Not up to date)
-------------------------------------------------------------------------------------------------------------------

npcs = {}
npcs.Trust = S{'Ajido-Marujido','Aldo','Ayame','Cherukiki','Curilla','D.Shantotto','Elivira','Excenmille',
        'Fablinix','FerreousCoffin','Gadalar','Gessho','Ingrid','IronEater','Joachim','Klara','Kupipi',
        'LehkoHabhoka','LhuMhakaracca','Lion','Luzaf','Maat','MihliAliapoh','Mnejing','Moogle','Mumor',
        'NajaSalaheem','Najelith','Naji','NanaaMihgo','Nashmeira','Noillurie','Ovjang','Prishe','Rainemard',
        'RomaaMihgo','Sakura','Shantotto','StarSibyl','Tenzen','Trion','UkaTotlihn','Ulmia','Valaineral',
        'Volker','Zazarg','Zeid'}

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
