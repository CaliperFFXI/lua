function get_sets()
    mote_include_version = 2
    include("Mote-Include.lua")
end

function job_setup()
    include("PUP-LIB.lua")
end

function user_setup()

    state.OffenseMode:options("MasterPet", "Master", "Trusts")
    state.HybridMode:options("Normal", "Acc", "TP", "DT", "Regen", "Ranged")
    state.PhysicalDefenseMode:options("PetDT", "MasterDT")
    state.MagicalDefenseMode:options("PetMDT")
    state.IdleMode:options("Idle", "MasterDT")

    --Various Cycles for the different types of PetModes
    state.PetStyleCycleTank = M {"NORMAL", "DD", "MAGIC", "SPAM"}
    state.PetStyleCycleMage = M {"NORMAL", "HEAL", "SUPPORT", "MB", "DD"}
    state.PetStyleCycleDD = M {"NORMAL", "BONE", "SPAM", "OD", "ODACC"}

    --The actual Pet Mode and Pet Style cycles
    --Default Mode is Tank
    state.PetModeCycle = M {"TANK", "DD", "MAGE"}
    --Default Pet Cycle is Tank
    state.PetStyleCycle = state.PetStyleCycleTank

    --Toggles
	-- Alt + E will turn on or off Auto Maneuver
    state.AutoMan = M(false, "Auto Maneuver")

	--//gs c toggle autodeploy
    state.AutoDeploy = M(false, "Auto Deploy")

	-- Alt + D will turn on or off Lock Pet DT
	-- (Note this will block all gearswapping when active)
    state.LockPetDT = M(false, "Lock Pet DT")

	-- Alt + (tilda) will turn on or off the Lock Weapon
    state.LockWeapon = M(false, "Lock Weapon")

	-- //gs c toggle setftp
    state.SetFTP = M(false, "Set FTP")

	-- This will hide the entire HUB
	-- //gs c hub all
    state.textHideHUB = M(false, "Hide HUB")

	-- This will hide the Mode on the HUB
	-- //gs c hub mode
    state.textHideMode = M(false, "Hide Mode")

	-- This will hide the State on the HUB
	-- //gs c hub state
    state.textHideState = M(false, "Hide State")

	-- This will hide the Options on the HUB
	-- //gs c hub options
    state.textHideOptions = M(false, "Hide Options")

	-- This will toggle the HUB lite mode
	-- //gs c hub lite
    state.useLightMode = M(false, "Toggles Lite mode")

	-- This will toggle the default Keybinds set up for any changeable command on the window
	-- //gs c hub keybinds
    state.Keybinds = M(false, "Hide Keybinds")

	-- This will toggle the CP Mode 
	-- //gs c toggle CP 
    state.CP = M(false, "CP") 

	-- Enter the slots you would lock based on a custom set up.
	-- Can be used in situation like Salvage where you don't want
	-- certain pieces to change.
	-- //gs c toggle customgearlock
    state.CustomGearLock = M(false, "Custom Gear Lock")
    --Example customGearLock = T{"head", "waist"}
   
	customGearLock = T{}

    send_command("bind !f7 gs c cycle PetModeCycle")
    send_command("bind ^f7 gs c cycleback PetModeCycle")
    send_command("bind !f8 gs c cycle PetStyleCycle")
    send_command("bind ^f8 gs c cycleback PetStyleCycle")
    send_command("bind !e gs c toggle AutoMan")
    send_command("bind !d gs c toggle LockPetDT")
    send_command("bind !f6 gs c predict")
    send_command("bind ^` gs c toggle LockWeapon")
    send_command("bind home gs c toggle setftp")
    send_command("bind PAGEUP gs c toggle autodeploy")
    send_command("bind PAGEDOWN gs c hide keybinds")
    send_command("bind end gs c toggle CP") 
    send_command("bind = gs c clear")

    -- Adjust the X (horizontal) and Y (vertical) position here to adjust the window
    pos_x = 0
    pos_y = 0
    setupTextWindow(pos_x, pos_y)
    
end

function file_unload()
    send_command("unbind !f7")
    send_command("unbind ^f7")
    send_command("unbind !f8")
    send_command("unbind ^f8")
    send_command("unbind !e")
    send_command("unbind !d")
    send_command("unbind !f6")
    send_command("unbind ^`")
    send_command("unbind home")
    send_command("unbind PAGEUP")
    send_command("unbind PAGEDOWN")       
    send_command("unbind end")
    send_command("unbind =")
end

function job_precast(spell, action, spellMap, eventArgs)
    if spell.english == "Activate" or spell.english == "Deus Ex Automata" then
        TotalSCalc()
        determinePuppetType()
    elseif string.find(spell.english, "Maneuver") then
        equip(sets.precast.JA.Maneuver)
    elseif sets.precast.JA[spell.english] then
        equip(sets.precast.JA[spell.english])
    elseif sets.precast.WS[spell.english] then
        equip(sets.precast.WS[spell.english])
    elseif pet.isvalid then
        if spell.english == "Deploy" and pet.tp >= 950 then
            equip(sets.midcast.Pet.WSNoFTP)
            eventArgs.handled = true
        end
    end
end

function job_aftercast(spell, action, spellMap, eventArgs)

    --Maneuver was interrupted and we don't have up to 3 already in queue then add this to be retried
    if string.find(spell.english, "Maneuver") and spell.interrupted == true and failedManeuvers:length() <= 3 then
        failedManeuvers:push(spell)
    end

    if pet.isvalid then
        if SC[pet.frame][spell.english] and pet.tp >= 850 and Pet_State == "Engaged" then
            ws = SC[pet.frame][spell.english]
            modif = Modifier[ws]

            --If its a valid modif
            if modif then
                equip(sets.midcast.Pet.WS[modif])
            else --Otherwise equip the default Weapon Skill Set
                equip(sets.midcast.Pet.WSNoFTP)
            end

            --Since this will be a new Weapon Skill we just performed best to reset any current timers
            resetWeaponSkillPetTimer()
            --Begin the count down until we may lock out the pet weapon skill set
            startWeaponSkillPetTimer()
            eventArgs.handled = true
        else
            handle_equipping_gear(player.status, Pet_State)
        end
    else
        handle_equipping_gear(player.status, Pet_State)
    end
end

function job_pet_aftercast(spell)
    --If pet just finished a weapon skill we want to temporarily block it from going back into weapon skill gear
    if table.contains(AutomatonWeaponSkills, spell.name) then
        justFinishedWeaponSkill = true
    end

    handle_equipping_gear(player.status, pet.status)
end

--Used to determine what Hybrid Mode to use when Player Idle and Pet is Engaged
function user_customize_idle_set(idleSet)
    
    if Master_State:lower() == const_stateIdle:lower() and Pet_State:lower() == const_stateEngaged:lower() then
        if state.HybridMode.current == "Normal" then --If Hybrid Mode is Normal then simply return the set
            return idleSet
        else
            idleSet = sets.idle.Pet.Engaged[state.HybridMode.current] --When Pet is engaged we pass in the Hybrid Mode to match to an existing set
            return idleSet
        end
    else --Otherwise return the idleSet with no changes from us
        return idleSet
    end
end

--Used to determine what Hybrid Mode to use when Player is engaged for trusts only and Pet is Engaged
function user_customize_melee_set(meleeSet)
    
    if (Master_State:lower() == const_stateEngaged:lower() and state.OffenseMode.value == "Trusts") and Pet_State:lower() == const_stateEngaged:lower() then
        if state.HybridMode.current == "Normal" then --If Hybrid Mode is Normal then simply return the set
            meleeSet = sets.idle.Pet.Engaged
            return meleeSet
        else
            meleeSet = sets.idle.Pet.Engaged[state.HybridMode.current] --When Pet is engaged we pass in the Hybrid Mode to match to an existing set
            return meleeSet
        end
    else --Otherwise return the idleSet with no changes from us
        return meleeSet
    end
end

function job_buff_change(status, gain, eventArgs)
    
    if status == "sleep" and gain then
        equip(set_combine(sets.defense.PDT, {neck = "Opo-opo Necklace"}))
        eventArgs.handled = true
    elseif status == "doom" and gain then
        send_command("input /p I have befallen to ~~~DOOM~~~ may my end not come to quickly.")
    elseif status == "doom" and gain == false then
        send_command("input /p I have avoided the grips of ~~~DOOM~~~ may Altana be praised! ")
    end

    if status:contains("Maneuver") and gain == false then
        currentManeuvers:pop()
    end
    
    if status:contains("Maneuver") and gain then
        currentManeuvers:push(status)
    end

    if 
        status:contains("Maneuver") 
        and gain == false
        and state.AutoMan.value 
        and player.hp > 0 
        and pet.isvalid 
        and not areas.Cities:contains(world.area)
        and currentManeuvers:length() < 3
        then
       
        send_command('input /ja "' .. status .. '" <me>')
            
    end

end

-- Toggles -- SE Macros: /console gs c "command"
function job_self_command(command, eventArgs)
    if command[1]:lower() == "automan" then --Toggles AutoMan
        state.AutoMan:toggle()
        validateTextInformation()

    elseif command[1]:lower() == "predict" then --Predict Command
        determinePuppetType()

    elseif command[1]:lower() == "hub" or command[1]:lower() == "hide" then --First variable is hide lets find out what
        if command[2]:lower() == "mode" then --Hides the Mode
            state.textHideMode:toggle()
            hideTextSections()

        elseif command[2]:lower() == "state" then --Hides/Shows the State
            state.textHideState:toggle()
            hideTextSections()

        elseif command[2]:lower() == "all" then -- Hides/Shows the HUB
            state.textHideHUB:toggle()

            if state.textHideHUB.value == true then
                texts.hide(main_text_hub)
            else 
                texts.show(main_text_hub)
            end

            hideTextSections()
        elseif command[2]:lower() == "keybinds" then --Hides/Show Keybinds
            state.Keybinds:toggle()

            if state.Keybinds.value then
                texts.update(main_text_hub, keybinds_on) --If ON then we pass in Table for keybinds to update the variables
            else 
                texts.update(main_text_hub, keybinds_off) --Otherwise we set them to blank
            end

            hideTextSections()
        elseif command[2]:lower() == "options" then --Hides/Show Options
            state.textHideOptions:toggle()
            hideTextSections()
        elseif command[2]:lower() == "lite" then --Hides/Show Options
            state.useLightMode:toggle()         
            toggleHubStyle()      
        end     
    elseif command[1]:lower() == "setftp" then --Set the FTP toggle
        state.SetFTP:toggle()
        validateTextInformation()
    elseif command[1]:lower() == "customgearlock" then --Set the customgearlock
        state.CustomGearLock:toggle()
        validateTextInformation()
    elseif command[1]:lower() == "clear" then
        failedManeuvers:clear()
        msg('Maneuvers have been reset')
    end
end

--Passes state changes for cycle commands
--handle_update is always called when a job state is changed
--Best to adjust gear in job_handle_update which is an override for the job file
function job_state_change(stateField, newValue, oldValue)

    --[[
        stateField is the Mode that could be passed in that is changing
        This could include PhysicalDefenseMode, OffenseMode, PetModeCycle -- etc
        If you provide a description then that is what will be passed in
        
        For example:
        state.AutoDeploy = M(false, "Auto Deploy")

        The second portion is a description so that is what the stateField would equal if this passed in

        Then we are given the newValue what it is changing to
        Then we are given the oldValue what it is changing from
    ]]

    if stateField == const_PetModeCycle then --Handles PetModeCycle Changes
        --Depending on the Pet Mode we are changing too these each have their own style to use
        if newValue == const_tank then --Sets PetStyleCycle to Tank if we are going to Tank Mode
            state.PetStyleCycle = state.PetStyleCycleTank
        elseif newValue == const_dd then --Sets PetStyleCycle to DD if we are going to DD Mode
            state.PetStyleCycle = state.PetStyleCycleDD
        elseif newValue == const_mage then --Sets PetStyleCycle to Mage if we are going to MAGE Mode
            state.PetStyleCycle = state.PetStyleCycleMage
        else
            --In the off chance we can't find this the new style added this is displayed
            msg("No Style found for: " .. newValue) 
        end

        --Update the Mode/Style to show properly on HUB
        main_text_hub.pet_current_mode = state.PetModeCycle.current
        main_text_hub.pet_current_style = state.PetModeCycle.current

        --Update gear
        handle_equipping_gear(player.status, Pet_State)
    elseif stateField == const_PetStyleCycle then
        main_text_hub.pet_current_style = newValue
    elseif stateField == "Auto Maneuver" then --Updates HUB for Auto Maneuver
        if newValue == true then
            main_text_hub.toggle_auto_maneuver = const_on
        else
            main_text_hub.toggle_auto_maneuver = const_off
        end
        
    elseif stateField == "Lock Pet DT" then
        --This command overrides everything and blocks all gear changes
        --Will lock until turned off or Pet is disengaged
        if newValue == true then
            equip(sets.pet.EmergencyDT)
            disable(
                "main",
                "sub",
                "range",
                "ammo",
                "head",
                "neck",
                "lear",
                "rear",
                "body",
                "hands",
                "lring",
                "rring",
                "back",
                "waist",
                "legs",
                "feet"
            )

            main_text_hub.toggle_lock_pet_dt_set = const_on
        else
            enable(
                "main",
                "sub",
                "range",
                "ammo",
                "head",
                "neck",
                "lear",
                "rear",
                "body",
                "hands",
                "lring",
                "rring",
                "back",
                "waist",
                "legs",
                "feet"
            )

            main_text_hub.toggle_lock_pet_dt_set = const_off
        end

    elseif stateField == "Lock Weapon" then --Updates HUB and disables/enables window for Lock Weapon
        if newValue == true then
            disable("main")
            main_text_hub.toggle_lock_weapon = const_on
        else
            enable("main")
            main_text_hub.toggle_lock_weapon = const_off
        end
    elseif stateField == "Custom Gear Lock" then --Updates HUB and disables/enables gear from custom lock
        if newValue == true then
            main_text_hub.toggle_custom_gear_lock = const_on
            disable(customGearLock)
        else
            main_text_hub.toggle_custom_gear_lock = const_off
            enable(customGearLock)
            handle_equipping_gear(player.status, Pet_State)
        end
    elseif stateField == 'Auto Deploy' then --Updates HUB for Auto Deploy
        if newValue == true then
            main_text_hub.toggle_auto_deploy = const_on
        else
            main_text_hub.toggle_auto_deploy = const_off
        end
    elseif stateField == 'Hide HUB' then --Hides or Shows the entire HUB Window
        if newValue == true then
            texts.hide(main_text_hub)
        else 
            texts.show(main_text_hub)
        end
    elseif stateField == 'Hide Mode' then --Handles hide/show Mode Section
        hideTextSections()
    elseif stateField == 'Hide State' then --Handles hide/show State Section
        hideTextSections()
    elseif stateField == 'Hide Options' then --Handles hide/show Options Section
        hideTextSections()
    elseif stateField == 'Hide Keybinds' then --Handles hide/show Keybinds
        if newValue == true then
            texts.update(main_text_hub, keybinds_on)
        else 
            texts.update(main_text_hub, keybinds_off)
        end
    elseif stateField == 'Offense Mode' then --Updates HUB for Offense Mode
        main_text_hub.player_current_offense = newValue
    elseif stateField == 'Physical Defense Mode' then -- Updates HUB for Physical Defense Mode
        main_text_hub.player_current_physical = newValue
    elseif stateField == 'Hybrid Mode' then --Updates HUB for Hybrid Mode
        main_text_hub.player_current_hybrid = newValue
    elseif stateField == 'Idle Mode' then -- Updates HUB for Idle Mode
        main_text_hub.player_current_idle = newValue
    end
end

-- Set eventArgs.handled to true if we don't want the automatic display to be run.
--This will display gear and run when F12 is pressed
function display_current_job_state(eventArgs)
    local msg = ""

    if state.PetModeCycle.value ~= "None" then
        msg = msg .. "Pet Mode: (" .. state.PetModeCycle.value .. ")"
    end

    if state.PetStyleCycle.value ~= "None" then
        msg = msg .. ", Pet Style: (" .. state.PetStyleCycle.value .. ")"
    end

    TotalSCalc()
    determinePuppetType()
    handle_equipping_gear(player.status, Pet_State)

    add_to_chat(122, msg)
end

function sub_job_change(new, old)
    determinePuppetType()
end
