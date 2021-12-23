--  Modes:      [ ALT + Q ]         Cycle Offense Modes
--              [ ALT + W ]         Cycle Hybrid Modes
--              [ ALT + R ]         Cycle Ranged Modes     
--              [ ALT + A ]        	Cycle Idle Modes     
--              [ ALT + D ]			Cycle Physical Defense Mode                                       
--              [ ALT + F ]         Toggle Kiting Mode
--				[ ALT + C ]			Toggle CP mode
--							
--              [ WIN + C ]         Toggle Capacity Points Mode
--				[ ALT + E/R ]		Cycle Weapon Sets
--
--              [ WIN+F9 ]          Cycle Weapon Skill Modes
--              [ F10 ]             Emergency -PDT Mode
--              [ F11 ]             Emergency -MDT Mode
--              [ F12 ]             Update Current Gear / Report Current Status
--              [ ALT+F12 ]         Cancel Emergency -PDT/-MDT Mode

-- Function to bind GearSwap binds when loading a GS script.
-- add_to_chat(122, '') --troubleshooting line

-- Table to store custom settings for each job
job_user_settings = {
	-- num = number of lockstyle set in-game
	-- book = macro book
	-- page = macro page
	['BLU'] = {num=4,book=14,page=1},
	['BLM'] = {num=nil,book=nil,page=nil},
	['BRD'] = {num=7,book=16,page=1},
	['BST'] = {num=nil,book=nil,page=nil},
	['COR'] = {num=15,book=6,page=9},
	['DNC'] = {num=nil,book=nil,page=nil},
	['DRG'] = {num=nil,book=nil,page=nil},
	['DRK'] = {num=13,book=4,page=2},
	['GEO'] = {num=nil,book=13,page=1},
	['MNK'] = {num=8,book=2,page=1},
	['NIN'] = {num=nil,book=1,page=1},
	['PLD'] = {num=13,book=3,page=2},
	['PUP'] = {num=nil,book=nil,page=nil},
	['RDM'] = {num=9,book=15,page=1},
	['RNG'] = {num=5,book=6,page=1},
	['RUN'] = {num=nil,book=3,page=5},
	['SAM'] = {num=14,book=4,page=1},
	['SCH'] = {num=3,book=20,page=1},
	['SMN'] = {num=2,book=18,page=1},
	['THF'] = {num=nil,book=6,page=5},
	['WAR'] = {num=nil,book=nil,page=nil},
	['WHM'] = {num=1,book=19,page=1},
}

function define_global_sets()
	-- Special gear info that may be useful across jobs.
	
	-- sets.Fish = {
		-- range="Lu Shang's F. Rod",	    
		-- head="Tlahtlamah Glasses",
		-- hands="Kachina Gloves",
		-- feet="Waders",
		-- neck="Fisher's Torque",
		-- waist="Fisher's Rope",
		-- left_ring="Puffin Ring",
		-- right_ring="Pelican Ring"
	-- }
	
	-- sets.Craft = {    
		-- sub="Joiner's Shield",
		-- body="Carpenter's Smock",
		-- hands="Carpenter's Gloves",
		-- neck="Carver's Torque",
		-- left_ring="Artificer's Ring",
		-- right_ring="Craftmaster's Ring",
	-- }
	
	-- Telchine
	gear.Telchine_Head = { name="Telchine Cap", augments={'Enh. Mag. eff. dur. +9',}}
	gear.Telchine_Body = { name="Telchine Chas.", augments={'Pet: "Regen"+2','Enh. Mag. eff. dur. +9',}}
	gear.Telchine_Hands = { name="Telchine Gloves", augments={'"Fast Cast"+5','Enh. Mag. eff. dur. +9',}}
	gear.Telchine_Legs = { name="Telchine Braconi", augments={'"Fast Cast"+4','Enh. Mag. eff. dur. +10',}}
	gear.Telchine_Feet = { name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}}
	
	-- Taeon
	gear.Taeon_Head = { name="Taeon Chapeau", augments={'"Snapshot"+4','"Snapshot"+5',}}
	gear.Taeon_Body = { name="Taeon Tabard", augments={'"Fast Cast"+3','Phalanx +3',}}
	gear.Taeon_Hands = { name="Taeon Gloves", augments={'Phalanx +3',}}
	gear.Taeon_Legs = { name="Taeon Tights", augments={'"Fast Cast"+5','Phalanx +3',}}
	gear.Taeon_Feet = { name="Taeon Boots", augments={'"Fast Cast"+5','Phalanx +2',}}

	-- Herculean
	gear.Herculean_Feet_TP = { name="Herculean Boots", augments={'Accuracy+23 Attack+23','"Triple Atk."+2','Attack+14',}}
	gear.Herculean_Hands_WSD = { name="Herculean Gloves", augments={'Weapon Skill Acc.+4','STR+5','Weapon skill damage +7%','Accuracy+7 Attack+7','Mag. Acc.+14 "Mag.Atk.Bns."+14',}}
	gear.Herculean_Head_MAB = { name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +1%','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+10',}}
	gear.Herculean_Legs_MAB = { name="Herculean Trousers", augments={'Mag. Acc.+14 "Mag.Atk.Bns."+14','Weapon skill damage +1%','Mag. Acc.+14','"Mag.Atk.Bns."+13',}}
	gear.Herculean_Feet_MAB = { name="Herculean Boots", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Mag. Acc.+14','"Mag.Atk.Bns."+13',}}
	
	-- Herc WS
	gear.Herculean_Body_WS = { name="Herculean Vest", augments={'Accuracy+29','Weapon skill damage +4%',}}
	gear.Herculean_Feet_WS = { name="Herculean Boots", augments={'Accuracy+25','Weapon skill damage +4%','STR+6',}}

	-- TH2 Gear
	gear.Herculean_Hands_TH = {}
	gear.Valorous_Legs_TH = { name="Valorous Hose", augments={'Attack+20','Chance of successful block +3','"Treasure Hunter"+2','Accuracy+2 Attack+2','Mag. Acc.+9 "Mag.Atk.Bns."+9',}}
	gear.Herculean_Body_TH = { name="Herculean Vest", augments={'Weapon Skill Acc.+6','Sklchn.dmg.+2%','"Treasure Hunter"+2','Mag. Acc.+17 "Mag.Atk.Bns."+17',}}
	gear.Chironic_Body_TH = { name="Chironic Doublet", augments={'MND+6','Pet: "Mag.Atk.Bns."+12','"Treasure Hunter"+2','Accuracy+6 Attack+6','Mag. Acc.+15 "Mag.Atk.Bns."+15',}}

	-- Other
	gear.BP_Grio = { name="Grioavolr", augments={'Blood Pact Dmg.+6','Pet: STR+1','Pet: Mag. Acc.+25','Pet: "Mag.Atk.Bns."+30','DMG:+10',}}
	gear.Enfeebling_Grio = { name="Grioavolr", augments={'Enfb.mag. skill +10','MND+14','Mag. Acc.+24','"Mag.Atk.Bns."+17',}}
		
	-- JSE -- 
end

function global_on_load()
	
	--Utility Binds
	send_command('bind @c gs c toggle CP')
	
    send_command('bind @w gs c toggle WeaponLock')
	send_command('bind !t gs c cycle treasuremode')
	send_command('bind !q gs c cycle OffenseMode')
    send_command('bind !` gs c toggle MagicBurst')
	send_command('bind !z gs c cycle CastingMode')
	
	send_command('bind @q gs c reset WeaponSet')
	send_command('bind @e gs c cycle WeaponSet')
    send_command('bind @r gs c cycleback WeaponSet')
	send_command('bind @d gs c cycle DamageType')	
	
	send_command('bind !w gs c cycle HybridMode')
	send_command('bind !r gs c cycle RangedMode')
	send_command('bind !a gs c cycle IdleMode')
	send_command('bind !d gs c cycle DefenseMode')
	send_command('bind !f gs c toggle Kiting')
	
	send_command('bind !c gs c update user')
	send_command('bind !o gs org')
	
	--Dev Binds
	send_command('bind !b gs debugmode')
	send_command('bind !v gs showswaps')

	--currently unused:
	send_command('bind f10 gs c set DefenseMode Physical')
	send_command('bind ^f10 gs c cycle PhysicalDefenseMode')
	send_command('bind f11 gs c set DefenseMode Magical')
	send_command('bind ^f11 gs c cycle CastingMode')
	send_command('bind !f12 gs c reset DefenseMode')
	
	send_command('bind @f9 gs c cycle WeaponskillMode')
	send_command('bind ^- gs c toggle selectnpctargets')
	send_command('bind ^= gs c cycle pctargetmode')
	
	-- Extra Load's
	send_command('lua l partybuffs') -- requires partybuffs.
	--send_command('lua l STFU') -- requires STFU
	--send_command('lua l React') 
	
	handle_lockstyle()
	set_macros()
	
end

function global_on_unload() -- Function to revert binds when unloading.
	send_command('unbind !q')
	send_command('unbind !w')
	send_command('unbind !r')
	send_command('unbind !a')
	send_command('unbind !d')
	send_command('unbind !f')
	
	send_command('unbind f10')
	send_command('unbind ^f10')
	send_command('unbind !f10')
	send_command('unbind f11')
	send_command('unbind ^f11')
	send_command('unbind !f11')
	send_command('unbind f12')
	send_command('unbind ^f12')
	send_command('unbind !f12')

	send_command('unbind ^-')
	send_command('unbind ^=')
end

function set_macros()
	local book = job_user_settings[player.main_job].book
	local page = job_user_settings[player.main_job].page
	
	if (book or page) ~= nil then
		set_macro_page(page,book)
		add_to_chat(122, 'Macros for '..player.main_job..' set to...') 
		add_to_chat(122, 'Book -  '..book..' / Page - '..page..''  ) 
	else
		add_to_chat(122, 'Job file warning: '..player.main_job..' macro book/page not specified in job file.') 
	end
end

function handle_lockstyle()
	local lockstyleset = job_user_settings[player.main_job].num
	if lockstyleset == nil then
		add_to_chat(122, ''..player.main_job..' Job file warning: Lockstyle not specified.') 
		lockstyleset = 20 --"default" lockstyle set, applied if none other specified.
	end
		send_command('wait 2; input /lockstyleset ' .. lockstyleset)
	--add_to_chat(281, ''..player.main_job..' Lockstyle: ' ..lockstyleset..'') --troubleshooting line
end

function display_current_job_state(eventArgs) -- Called by player update, displays state information.
    local cf_msg = ''
    if state.CombatForm.has_value then
        cf_msg = ' (' ..state.CombatForm.value.. ')'
    end
	
	local cw_msg = ''
    if state.CombatWeapon.has_value then
        cw_msg = ' '..state.CombatWeapon.value.. ' '
    end

    local m_msg = state.OffenseMode.value
    if state.HybridMode.value ~= 'Normal' then
        m_msg = m_msg .. '/' ..state.HybridMode.value
    end

    local ws_msg = state.WeaponskillMode.value

    local d_msg = 'None'
    if state.DefenseMode.value ~= 'None' then
        d_msg = state.DefenseMode.value .. state[state.DefenseMode.value .. 'DefenseMode'].value
    end

    local i_msg = state.IdleMode.value

    local msg = ''
    if state.Kiting.value then
        msg = msg .. ' Kiting: On |'
    end

    add_to_chat(002, 
		'|' 
		..string.char(31,210).. ' Melee' ..cf_msg.. ': ' ..string.char(31,001)..m_msg.. string.char(31,002)..  ' |'
        ..string.char(31,207).. ' WS: ' ..string.char(31,001)..ws_msg.. string.char(31,002)..  ' |'
        ..string.char(31,004).. ' Defense: ' ..string.char(31,001)..d_msg.. string.char(31,002)..  ' |'
        ..string.char(31,008).. ' Idle: ' ..string.char(31,001)..i_msg.. string.char(31,002)..  ' |'
        ..string.char(31,002)..msg)
    add_to_chat(002, 
		'|' 
		..string.char(31,210).. ' CombatWeapon: ' ..cw_msg.. string.char(31,001)..  ' |')

    eventArgs.handled = true
	
	handle_lockstyle()
end