

local leaningAnimationsets = {
    --#########################################################################################
        {
            gender = "female",
            activity = "wall_hand_up",
            animations = {
                dict = "amb@world_human_leaning@female@wall@back@hand_up@",
                enter = {suffix = "enter", anims = {"enter_back", "enter_left", "enter_right"}},
                idle = {suffix = "idle_a", anims = {"idle_a", "idle_b", "idle_c"}},
                exit = {suffix = "exit", anims = {"exit_front", "exit_left", "exit_right"}},
            }
        },
        {
            gender = "female",
            activity = "hand_up",
            animations = {
                dict = "amb@world_human_leaning@female@wall@back@hand_up@",
                enter = {suffix = "enter", anims = {"enter_back", "enter_left", "enter_right"}},
                idle = {suffix = "idle_b", anims = {"idle_d", "idle_e"}},
                exit = {suffix = "exit", anims = {"exit_front", "exit_left", "exit_right"}},
            }
        },
    --#########################################################################################
        {
            gender = 'both',--"female",
            activity = "holding_elbow",
            switched = true, 
            animations = {
                dict = "amb@world_human_leaning@female@wall@back@holding_elbow@",
                enter = {suffix = "enter", anims = {"enter_front", "enter_left", "enter_right"}},
                idle = {suffix = "idle_a", anims = {"idle_a", "idle_b", "idle_c"}},
                exit = {suffix = "exit", anims = {"exit_front", "exit_left", "exit_right"}},
            }
        },
        {
            gender = 'both',--"female",
            activity = "holding_elbow",
            switched = true, 
            animations = {
                dict = "amb@world_human_leaning@female@wall@back@holding_elbow@",
                enter = {suffix = "enter", anims = {"enter_front", "enter_left", "enter_right"}},
                idle = {suffix = "idle_b", anims = {"idle_d", "idle_e"}},
                exit = {suffix = "exit", anims = {"exit_front", "exit_left", "exit_right"}},
            }
        },
    --#########################################################################################
    --#########################################################################################
    --#########################################################################################
    --#########################################################################################
    --#########################################################################################
    --#########################################################################################
    --#########################################################################################
        {
            gender = 'both',--"male",
            activity = "foot_up",
            animations = {
                dict = "amb@world_human_leaning@male@wall@back@foot_up@",
                enter = {suffix = "enter", anims = {"enter_back", "enter_left", "enter_right"}},
                idle = {suffix = "idle_a", anims = {"idle_a", "idle_b", "idle_c"}},
                exit = {suffix = "exit", anims = {"exit_front", "exit_left", "exit_right"}},
            }
        },
        {
            gender = 'both',--"male",
            activity = "foot_up",
            animations = {
                dict = "amb@world_human_leaning@male@wall@back@foot_up@",
                enter = {suffix = "enter", anims = {"enter_back", "enter_left", "enter_right"}},
                idle = {suffix = "idle_b", anims = {"idle_d", "idle_e"}},
                exit = {suffix = "exit", anims = {"exit_front", "exit_left", "exit_right"}},
            }
        },
    --#########################################################################################
        {
            gender = 'both',--"male",
            activity = "hands_together", -- switched
            animations = {
                dict = "amb@world_human_leaning@male@wall@back@hands_together@",
                enter = {suffix = "enter", anims = {"enter_back", "enter_left", "enter_right"}},
                idle = {suffix = "idle_a", anims = {"idle_a", "idle_b", "idle_c"}},
                exit = {suffix = "exit", anims = {"exit_front", "exit_left", "exit_right"}},
            }
        },
        {
            gender = 'both',--"male",
            activity = "hands_together", -- switched
            animations = {
                dict = "amb@world_human_leaning@male@wall@back@hands_together@",
                enter = {suffix = "enter", anims = {"enter_back", "enter_left", "enter_right"}},
                idle = {suffix = "idle_b", anims = {"idle_d", "idle_e"}},
                exit = {suffix = "exit", anims = {"exit_front", "exit_left", "exit_right"}},
            }
        },
    --#########################################################################################
        {
            gender = "male",
            activity = "legs_crossed", -- switched
            switched = true, 
            animations = {
                dict = "amb@world_human_leaning@male@wall@back@legs_crossed@",
                enter = {suffix = "enter", anims = {"enter_back", "enter_front", "enter_left", "enter_right"}},
                idle = {suffix = "idle_a", anims = {"idle_a", "idle_b", "idle_c"}},
                exit = {suffix = "exit", anims = {"exit_back", "exit_front", "exit_left", "exit_right"}},
            }
        },
        {
            gender = "male",
            activity = "legs_crossed", -- switched
            switched = true, 
            animations = {
                dict = "amb@world_human_leaning@male@wall@back@legs_crossed@",
                enter = {suffix = "enter", anims = {"enter_back", "enter_front", "enter_left", "enter_right"}},
                idle = {suffix = "idle_b", anims = {"idle_d", "idle_e"}},
                exit = {suffix = "exit", anims = {"exit_back", "exit_front", "exit_left", "exit_right"}},
            }
        },
        -- Additional sets can be added following the same structure.
    }
    
    
    function loadAnimDict(dict)
        RequestAnimDict(dict)
        while not HasAnimDictLoaded(dict) do
            Citizen.Wait(0)
        end
    end
    
    local PlayerGender = false
    local isCurrentlyLeaning = false
    RegisterKeyMapping('_SynSit_Lean', 'Lean Anywhere', 'keyboard',  'l') -- L
    RegisterCommand('_SynSit_Lean', function()
        if not isCurrentlyLeaning then -- E key, or change to your preferred key
            local playerPed = PlayerPedId()
            if not InUse and IsPedOnFoot(playerPed) and not IsPedDeadOrDying(playerPed) and not IsPedFalling(playerPed) and not IsPedRunning(playerPed) and not IsPedSprinting(playerPed) and not IsPedSwimming(playerPed) and not IsPedInMeleeCombat(playerPed) then
                isCurrentlyLeaning = true
                local playerPos = GetEntityCoords(playerPed)
                local playerHeading = GetEntityHeading(playerPed)
                if not PlayerGender then 
                    local modelHash = GetEntityModel(playerPed)  -- Get the model hash of the player's ped
                    PlayerGender = modelHash == GetHashKey("mp_m_freemode_01") and 'male' or modelHash == GetHashKey("mp_f_freemode_01") and 'female'
                end 
                local detected, wallNormal, coords = DetectWall(playerPos)
                if detected and coords then
                    if not SkipSeat then 
                        refetch = false
                        recheck = false
                        repeat 
                            randomAnim = math.random(1,#leaningAnimationsets)
                            animSet = leaningAnimationsets[randomAnim].animations -- Example: select the first set of animations.
                            Wait(10)
                            refetch = PlayerGender == 'male' and leaningAnimationsets[randomAnim].gender == 'female' -- ensure no danty anims for my macho man
                            -- Determine the proper entry animation based on wallNormal.
                            entryAnim, recheck = GetEntryAnimation(animSet, wallNormal, leaningAnimationsets[randomAnim])
    
                        until not recheck and not refetch
    
    
                        local currentDict = animSet.dict .. animSet.enter.suffix
                        loadAnimDict(currentDict)
                        TaskPlayAnim(playerPed, currentDict, entryAnim, 8.0, -8.0, GetAnimDuration(currentDict, entryAnim), 0, 0, false, false, false)-- Play the determined entry animation
                        Citizen.Wait(GetAnimDuration(currentDict, entryAnim) * 1000) -- Wait for the animation to finish
    
                        
                        local currentDict = animSet.dict .. animSet.idle.suffix
                        loadAnimDict(currentDict)
                        local randomAnim_idle = math.random(1,#animSet.idle.anims) --print(currentDict,animSet.idle.anims[randomAnim_idle])
                        TaskPlayAnim(playerPed, currentDict, animSet.idle.anims[randomAnim_idle], 8.0, -8.0, -1, 1, 0, false, false, false) -- Transition to the idle animation
                        Citizen.Wait(100)
                        local exitSide = "front"
                        while IsEntityPlayingAnim(playerPed, currentDict, animSet.idle.anims[randomAnim_idle], 3) do -- Stay in the idle animation until a key is pressed
                            Citizen.Wait(5)
                            if IsControlJustPressed(0, 38) then -- e key, or another preferred key
                                exitSide = "front"
                                break
                            elseif IsControlJustPressed(0, 32) then --
                                exitSide = "front"
                                break
                            elseif IsControlJustPressed(0, 33) then --
                                exitSide = "back"
                                break
                            elseif IsControlJustPressed(0, 34) then --
                                exitSide = "left"
                                break
                            elseif IsControlJustPressed(0, 35) then --
                                exitSide = "right"
                                break
                            end
                        end
    
                        -- Play the exit animation
                        local currentDict = animSet.dict .. animSet.exit.suffix
                        loadAnimDict(currentDict)
                        exitAnim = GetExitAnimation(animSet, exitSide)
                        TaskPlayAnim(playerPed, currentDict, exitAnim, 8.0, -8.0, GetAnimDuration(currentDict, exitAnim), 0, 0, false, false, false)-- Transition to the idle animation
                        Citizen.Wait(GetAnimDuration(currentDict, exitAnim) * 1000) -- Wait for the animation to finish
                        ClearPedTasks(playerPed)
                        RemoveAnimDict(animSet.dict)
                    end
                end
                isCurrentlyLeaning = false
            end
        end
    end)
    
    function DetectWall(pos)
        local directions = {
            { x = 0.0, y = 0.7, z = -0.2, name = 'front' },
            { x = 0.0, y = -0.7, z = -0.2, name = 'back' },
            { x = -0.7, y = 0.0, z = -0.2, name = 'left' },
            { x = 0.7, y = 0.0, z = -0.2, name = 'right' },
    
            { x = 0.0, y = 0.7, z = 0.0, name = 'front' },
            { x = 0.0, y = -0.7, z = 0.0, name = 'back' },
            { x = -0.7, y = 0.0, z = 0.0, name = 'left' },
            { x = 0.7, y = 0.0, z = 0.0, name = 'right' }
        }
    
        local distances = {}
        local closest = {name = "bob", range = 100 }
        for _, direction in ipairs(directions) do
            local checkPos = GetOffsetFromEntityInWorldCoords(PlayerPedId(),direction.x,direction.y,direction.z) -- we want the line to have a very slight downward slop so it ends below the buttcheek
            local rayHandle = StartShapeTestRay(pos.x, pos.y, (pos.z), checkPos.x, checkPos.y, checkPos.z, -1 --[[ 1 ]], PlayerPedId(), 0)
            local _, hit, endCoords, surfaceNormal, _ = GetShapeTestResult(rayHandle)
            --DrawLine(pos.x, pos.y, (pos.z), checkPos.x, checkPos.y, checkPos.z, 255,0,0,255) -- this draws red lines to show you where the raycasts are being sent to
            --print(_, hit, endCoords, surfaceNormal, _)
            if hit == 1 then
                distances[direction.name] = {dist = #(pos - endCoords), coords = endCoords}
                --print(direction.name)
            end
        end
        for k,v in pairs(distances) do 
            --print(k,v)
            if v.dist < closest.range then 
                closest.range= v.dist
                closest.name = k
                closest.coords = v.coords
            end
        end
        if closest.range < 100 then
            return true,  closest.name , closest.coords
        else 
            return false, nil
        end
    end
    
    
    
    
    function GetEntryAnimation(animSet, wallNormal, animData)
        
        if animData.switched then -- some entry anims are garbled front is back back is front
            --print("Switched")
            if wallNormal == 'front' then 
                wallNormal = 'back'
            elseif wallNormal == 'back' then 
                wallNormal = 'front'
            end
        end 
        for i = 1, #animSet.enter.anims do 
            if string.find(animSet.enter.anims[i],wallNormal) then 
                --print("matched" , wallNormal)
                return animSet.enter.anims[i] , false
            end 
        end 
        return false , true
    end
    
    
    function GetExitAnimation(animSet, wallNormal)
        
        for i = 1, #animSet.exit.anims do 
            if string.find(animSet.exit.anims[i],wallNormal) then 
                --print("matched" , wallNormal)
                return animSet.exit.anims[i]
            end 
        end 
        return animSet.exit.anims[1]
    end