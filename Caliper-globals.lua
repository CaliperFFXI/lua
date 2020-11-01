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
	['BRD'] = {num=19,book=16,page=1},
	['BST'] = {num=nil,book=nil,page=nil},
	['COR'] = {num=nil,book=6,page=9},
	['DNC'] = {num=nil,book=nil,page=nil},
	['DRG'] = {num=nil,book=nil,page=nil},
	['DRK'] = {num=nil,book=nil,page=nil},
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
	
	sets.Craft = {    
		sub="Joiner's Shield",
		body="Carpenter's Smock",
		hands="Carpenter's Gloves",
		neck="Carver's Torque",
		left_ring="Artificer's Ring",
		right_ring="Craftmaster's Ring",
	}
	
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

	-- Valourous
	gear.Valorous_Head_WSD = { name="Valorous Mask", augments={'Accuracy+20','Weapon skill damage +4%','AGI+2','Attack+14',}}
	gear.Valorous_Hands_WSD = { name="Valorous Mitts", augments={'Accuracy+6 Attack+6','Weapon skill damage +4%','STR+1','Accuracy+11',}}
	gear.Valorous_Feet_WSD = { name="Valorous Greaves", augments={'Accuracy+18','Weapon skill damage +3%','Attack+10',}}
	
	-- Merlinic
	gear.Merlinic_Head_MB = { name="Merlinic Hood", augments={'Mag. Acc.+12 "Mag.Atk.Bns."+12','Magic burst dmg.+8%','CHR+5','Mag. Acc.+7','"Mag.Atk.Bns."+15',}}
	gear.Merlinic_Body_MB = { name="Merlinic Jubbah", augments={'Mag. Acc.+14 "Mag.Atk.Bns."+14','Magic burst dmg.+8%','MND+4','"Mag.Atk.Bns."+15',}}
	gear.Merlinic_Legs_MB = { name="Merlinic Shalwar", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Magic burst dmg.+9%','CHR+5','Mag. Acc.+7','"Mag.Atk.Bns."+10',}}

	-- TH2 Gear
	gear.Herculean_Hands_TH = {}
	gear.Herculean_Body_TH = { name="Herculean Vest", augments={'Weapon Skill Acc.+6','Sklchn.dmg.+2%','"Treasure Hunter"+2','Mag. Acc.+17 "Mag.Atk.Bns."+17',}}
	gear.Chironic_Body_TH = { name="Chironic Doublet", augments={'MND+6','Pet: "Mag.Atk.Bns."+12','"Treasure Hunter"+2','Accuracy+6 Attack+6','Mag. Acc.+15 "Mag.Atk.Bns."+15',}}

	-- Other
	gear.BP_Grio = { name="Grioavolr", augments={'Blood Pact Dmg.+6','Pet: STR+1','Pet: Mag. Acc.+25','Pet: "Mag.Atk.Bns."+30','DMG:+10',}}
	gear.Enfeebling_Grio = { name="Grioavolr", augments={'Enfb.mag. skill +10','MND+14','Mag. Acc.+24','"Mag.Atk.Bns."+17',}}
		
	-- JSE -- 
	
	-- BRD 
	gear.BRD_FC_Idle = { name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Phys. dmg. taken-10%',}}
	gear.BRD_TP = { name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Damage taken-5%',}}
	gear.BRD_DEX_WS = { name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}
	gear.BRD_CRIT_WS = { name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}}
	gear.MainKali = {}
	gear.SubKali = {}

	-- MNK
	gear.MNK_TP = { name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}}
	gear.MNK_Crit = { name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Crit.hit rate+10',}}
	gear.MNK_STR_WS = { name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}
	gear.MNK_VIT_WS = { name="Segomo's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}}

	-- RDM
	gear.RDM_TP = { name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}}
	gear.RDM_MACC = { name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}}
	gear.RDM_STR_WS = { name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}

	-- RNG
	gear.RNG_TP_Melee = { name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}}
	gear.RNG_TP_Range = {name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10',}}
	gear.RNG_AGI_WS = { name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}}
	gear.RNG_STR_WS = { name="Belenus's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	gear.RNG_AGI_WS_Magic = { name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}}
	gear.RNG_Snapshot = { name="Belenus's Cape", augments={'"Snapshot"+10',}}
	gear.RNG_DEX_WS = { name="Belenus's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	gear.RNG_CRIT_WS = { name="Belenus's Cape", augments={'DEX+20','Rng.Acc.+20 Rng.Atk.+20','DEX+10','Crit.hit rate+10',}}

	-- SAM
	gear.SAM_TP = {	name="Takaha Mantle"}
	gear.SAM_STR_WS = { name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	
	-- SMN
	gear.BPcapePhysical = {name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: Haste+10','Damage taken-3%',}}
	gear.BPcapeMagical = {name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Mag. Acc.+10','"Fast Cast"+10',}}
	gear.BPdelayCape = {name="Conveyance Cape", augments={'Summoning magic skill +1','Blood Pact Dmg.+1','Blood Pact ab. del. II -3',}}
	gear.MagMerlinic = {name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+20 Pet: "Mag.Atk.Bns."+20','Blood Pact Dmg.+10','Pet: STR+6','Pet: Mag. Acc.+15',}}

	-- Ambuscade Capes
	gear.PLD_Cure_SIRD = {name="Rudianos's Mantle", augments={'VIT+20','"Cure" potency +10%','Spell interruption rate down-10%',}}		
	gear.PLD_FC_PDT = {name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Phys. dmg. taken-10%',}}
	gear.PLD_TP= { name="Rudianos's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}

end

function global_on_load()
	
	--Utility Binds
	send_command('bind @c gs c toggle CP')
	
    send_command('bind @w gs c toggle WeaponLock')
	send_command('bind !t gs c cycle treasuremode')
	send_command('bind !q gs c cycle OffenseMode')
    send_command('bind !` gs c toggle MagicBurst')
	
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
	send_command('lua l equipviewer') -- requires equipviewer.
	send_command('lua l STFU') -- requires STFU
	
	handle_lockstyle()
	set_macros()
	
	include('organizer-lib')

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

--[[
function th_action_check(category, param)
    if category == 2 or -- Ranged attacks
	(category == 7 and param == 24931)-- Aeolian Edge
	then return true
    end
end
]]
-- category == 1=melee, 2=ranged, 3=weaponskill, 4=spell, 6=job ability, 14=unblinkable JA


