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
-- add_to_chat(122, 'Logic Level Reached') --troubleshooting line

--[[
	head=gear.Telchine_Head,
	body=gear.Telchine_Body,
	hands=gear.Telchine_Hands,
	legs=gear.Telchine_Legs,
	feet=gear.Telchine_Feet,
	
	head=gear.Taeon_Head,
	body=gear.Taeon_Body,
	hands=gear.Taeon_Hands,
	legs=gear.Taeon_Legs,
	feet=gear.Taeon_Feet,
	
	head=gear.Valorous_Head_WSD
	hands=gear.Valorous_Hands_WSD
	feet=gear.Valorous_Feet_WSD
]]

function define_global_sets()
	-- Special gear info that may be useful across jobs.

	sets.Fish = {    
		range="Lu Shang's F. Rod",
	-- Lures
		-- ammo="Sinking minnow",
		-- ammo="Sabiki Rig",
		-- ammo="Shrimp lure",
		-- ammo="Fly Lure",
		-- ammo="Robber Rig",
		-- ammo="Minnow",
		-- ammo="Frog Lure",
	-- Bait
		-- ammo="Slice of Bluetail",
		
	-- Gear		
		head="Tlahtlamah Glasses",
		body="Fsh. Tunica",
		hands="Fsh. Gloves",
		--hands="Kachina Gloves",
		legs="Fisherman's Hose",
		feet="Fisherman's Boots",
		neck="Fisher's Torque",
		left_ring="Pelican Ring",
		right_ring="Pelican Ring",
		waist="Fisher's Rope",
	}
--[[
	sets.Craft = {
		sub="Joiner's Shield",
		--head="Midras's Helm +1",
		body="Carpenter's Smock",
		hands="Carpenter's Gloves",
		neck="Carver's Torque",
		left_ring="Craftmaster's Ring",
		right_ring="Artificer's Ring",
		--back="Shaper's Shawl",
	}
]]
	sets.Synergy = set_combine(sets.Craft,{hands="Fisherman's Cuffs"})
	
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
	gear.Herculean_Feet_MAB = { name="Herculean Boots", augments={'"Mag.Atk.Bns."+24','Weapon skill damage +3%','Mag. Acc.+11',}}

	-- Valourous
	gear.Valorous_Head_WSD = { name="Valorous Mask", augments={'Accuracy+20','Weapon skill damage +4%','AGI+2','Attack+14',}}
	gear.Valorous_Hands_WSD = { name="Valorous Mitts", augments={'Accuracy+6 Attack+6','Weapon skill damage +4%','STR+1','Accuracy+11',}}
	gear.Valorous_Feet_WSD = { name="Valorous Greaves", augments={'Accuracy+18','Weapon skill damage +3%','Attack+10',}}
	
	-- TH2 Gear
	gear.Herculean_Hands_TH = {}
	gear.Herculean_Body_TH = {name="Herculean Vest", augments={'Weapon Skill Acc.+6','Sklchn.dmg.+2%','"Treasure Hunter"+2','Mag. Acc.+17 "Mag.Atk.Bns."+17',}}
	gear.Chironic_Hands_TH = {}
		
	-- JSE capes -- 
	
	-- BRD 
	gear.BRD_FC_Idle = { name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Occ. inc. resist. to stat. ailments+10',}}
	gear.BRD_TP = { name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Damage taken-5%',}}
	gear.BRD_DEX_WS = { name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}
	gear.BRD_CRIT_WS = { name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}}

	-- MNK
	gear.MNK_TP = { name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}}
	gear.MNK_Crit = { name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Crit.hit rate+10',}}
	gear.MNK_STR_WS = { name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}

	-- RNG
	gear.RNG_TP_Melee = { name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}}
	gear.RNG_TP_Range = {name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10',}}
	gear.RNG_AGI_WS = {name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}}
	gear.RNG_STR_WS = {name="Belenus's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	gear.RNG_AGI_WS_Magic = {name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}}
	gear.RNG_Snapshot = {name="Belenus's Cape", augments={'"Snapshot"+10',}}
	
	-- SAM
	gear.SAM_TP = {	name="Takaha Mantle"}
	gear.SAM_STR_WS = { name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	
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
	
	set_job_custom_settings() --Calls the macro / lockstyle function
	
	-- Welcome Message
    local msg = '***** Remember to Organize! *****'
        local border = ""
        for i = 1, #msg do
            border = border .. "*"
        end

        add_to_chat(002, border)
        add_to_chat(002, msg)
        add_to_chat(002, border)
	
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


function set_job_custom_settings() -- Macro selection handling.
    if player.main_job == 'NIN' then
		set_macro_page(1,1)
		set_lockstyle(20)
	elseif player.main_job == 'THF' then
		set_macro_page(5,6)
		set_lockstyle(20)
	elseif player.main_job == 'MNK' then
		set_macro_page(1,2)
		set_lockstyle(8)
	elseif player.main_job == 'RUN' then
		set_macro_page(5,3)
		set_lockstyle(20)
	elseif player.main_job == 'PLD' then
		set_macro_page(2,3)
		set_lockstyle(13)
	elseif player.main_job == 'RNG' then
		set_macro_page(1,6)	
		--set_lockstyle(5)
	elseif player.main_job == 'GEO' then
		set_macro_page(1,13)
		set_lockstyle(20)
	elseif player.main_job == 'BLU' then
		set_macro_page(1,14)
		set_lockstyle(4)
	elseif player.main_job == 'RDM' then
		set_macro_page(1,15)
		set_lockstyle(20)
	elseif player.main_job == 'BRD' then
		set_macro_page(1,16)
		set_lockstyle(20)
	elseif player.main_job == 'SMN' then
		set_macro_page(1,18)
		set_lockstyle(2)
	elseif player.main_job == 'WHM' then
		set_macro_page(1,19)	
		set_lockstyle(1)
	elseif player.main_job == 'SCH' then
		set_macro_page(1,20)
		set_lockstyle(20)	
	elseif player.main_job == 'COR' then
		set_macro_page(9,6)
		set_lockstyle(20)	
	elseif player.main_job == 'SAM' then
		set_macro_page(1,4)
		set_lockstyle(14)	
	end
end

function set_lockstyle(lockstyleset) -- Lockstyle handling.
    send_command('wait 2; input /lockstyleset ' .. lockstyleset)
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
end