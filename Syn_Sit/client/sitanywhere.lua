
function getCoordsScene_2(Ignore)
    local Cam = GetGameplayCamCoord()
    local _, Hit, Coords, _, Entity = GetShapeTestResult(StartExpensiveSynchronousShapeTestLosProbe(Cam, getCoordsFromCam(10, Cam), -1, Ignore, 4))
    return Coords
    end


RegisterCommand("SitAnyWhere", function()     -- Listen for this command.
    local pId = PlayerPedId()  
    local pIdCoords = GetEntityCoords(pId)
    local distance = nil
    local size = nil
    local markerheading = 0.0
    local learning = true
    local SavedCoords = false 

    --CurrentClone =  ClonePedEx(pId, 0.0, false, true, 1)

    local playerDummy = ClonePed(pId, false, false, true)
    SetEntityAlpha(playerDummy, 58, false)

    SetBlockingOfNonTemporaryEvents(CurrentClone, true)
    --SetEntityVisible(CurrentClone, false, false)
    SetEntityInvincible(playerDummy, true)
    SetEntityCollision(playerDummy, false, false)

    local AnimationsQuick = Config.SitAnyWhereAnims
    local Cur_Anim = 1
    RequestAnimDict(AnimationsQuick[Cur_Anim].dict)
    while not HasAnimDictLoaded(AnimationsQuick[Cur_Anim].dict) do
        Citizen.Wait(0)
    end
    
    TaskPlayAnim(playerDummy, AnimationsQuick[Cur_Anim].dict, AnimationsQuick[Cur_Anim].anim, 8.0, 1.0, -1, 1, 0, 0, 0, 0)
    
    AnyWhereSeat_String = "~INPUT_ATTACK~ Sit ~INPUT_AIM~ Reset\n ~INPUT_TALK~ Next"
    while learning do 
        Citizen.Wait(5)
        local pEscena = getCoordsScene_2(playerDummy)
        SetEntityCollision(playerDummy, false, false)
        ShowHelpNotification(AnyWhereSeat_String)
        if pEscena ~= nil then 
            DisableControlAction(0, 15, true) -- scroll up
            DisableControlAction(0, 16, true) -- scroll down 
    
            DisableControlAction(0, 24, true) -- left click 
            DisableControlAction(0, 25, true) -- left click 
            DisableControlAction(0, 38, true) -- E
            DisableControlAction(0, 44, true) -- Q
            distance = #(pEscena - pIdCoords)
            size = 0.1
            
            if IsDisabledControlPressed(0, 15) then
                markerheading = markerheading + 3.0
            elseif IsDisabledControlPressed(0, 16) then
                markerheading = markerheading - 3.0
            end 
            
            DrawMarker(28, pEscena.x, pEscena.y, pEscena.z, 0, 0, 0, 0, 0, 0, size, size, size, Config.DebugMarkerColor, false, false)

             
            if IsPedHeeled(playerDummy) then -- heels increase the z of player so we have to account for that
                pEscena = vec3(pEscena.x, pEscena.y, pEscena.z -0.12)
            end

            if AnimationsQuick[Cur_Anim].zOff == -0.5 then 
                SetEntityCoords(playerDummy, pEscena.x, pEscena.y, pEscena.z)
            elseif  AnimationsQuick[Cur_Anim].anim then 
                SetEntityCoords(playerDummy, pEscena.x, pEscena.y, pEscena.z + AnimationsQuick[Cur_Anim].zOff)
            else 
                SetEntityCoords(playerDummy, pEscena.x, pEscena.y, pEscena.z --[[ + AnimationsQuick[Cur_Anim].zOff ]])
            end
            SetEntityHeading(playerDummy,markerheading)
            if IsDisabledControlJustReleased(0, 38) then -- Press E
                Cur_Anim = Cur_Anim + 1
                if Cur_Anim > #AnimationsQuick then 
                    Cur_Anim = 1 
                end
                Wait(50)
            elseif IsDisabledControlJustReleased(0, 44) then -- Q
                Cur_Anim = Cur_Anim - 1
                if Cur_Anim < 1 then 
                    Cur_Anim = #AnimationsQuick 
                end
                Wait(50)
            elseif IsDisabledControlJustReleased(0, 25) then -- right click
                ClearPedTasksImmediately(playerDummy)
                Wait(100)
            elseif IsEntityDead(pId) or IsPedFalling(pId) or IsControlPressed(0, 21) or IsControlPressed(0, 49) or IsControlPressed(0, 55) or IsControlPressed(0, 202) then  
                DeleteEntity(playerDummy)
                learning = false
                break
            end 
  

            if AnimationsQuick[Cur_Anim].anim then 
                if not IsEntityPlayingAnim(playerDummy, AnimationsQuick[Cur_Anim].dict, AnimationsQuick[Cur_Anim].anim,3) then 
                   
                    loadAnimDict(AnimationsQuick[Cur_Anim].dict)
                    TaskPlayAnim(playerDummy, AnimationsQuick[Cur_Anim].dict, AnimationsQuick[Cur_Anim].anim, 8.0, 1.0, -1, 1, 0, 0, 0, 0)
                end
                SavedCoords = pEscena
            elseif not IsPedUsingScenario(playerDummy, AnimationsQuick[Cur_Anim].dict) then 
                ClearPedTasksImmediately(playerDummy)
                Wait(10)
                ClearAreaOfObjects(pEscena.x, pEscena.y, pEscena.z, 0.7,0)
                ClearAreaOfObjects(pEscena.x, pEscena.y, pEscena.z - 0.2, 0.3,0)
                Wait(1)
                SavedCoords = pEscena
                TaskStartScenarioAtPosition(playerDummy, AnimationsQuick[Cur_Anim].dict, pEscena.x, pEscena.y, pEscena.z +0.05, markerheading, -1, false, true)
            end
            
            if IsDisabledControlJustReleased(0, 24) then -- Left CLick
                Wait(50)
                local coords , heading = GetEntityCoords(playerDummy), GetEntityHeading(playerDummy)
                if SavedCoords then 
                    coords = SavedCoords 
                end
                DeleteEntity(playerDummy)
                TaskGoToCoordAnyMeans(pId,  coords.x, coords.y, coords.z + 0.2, 1.0, 0, 0, 786603, 0xbf800000)
                SkipSeat = false 
                while true do 
                    Wait(1)
                    local PlayerCoords = GetEntityCoords(pId)
                    local SeatDistance = #(PlayerCoords - coords)
                    if SeatDistance < 1.6 then 
                        if PlayerCoords.z < coords.z and coords.z - PlayerCoords.z > 0.4 then 
                            ClearPedTasks(pId)
                            Wait(1)
                            TaskClimb(pId, true)
                            Wait(800)
                        end
                        break
                    elseif SeatDistance > 5 then 
                        ClearPedTasks(pId)
                        SkipSeat = true
                        break 
                    end
                   
                    if IsControlPressed(0, 24) or IsControlPressed(0, 38) or IsControlPressed(0, 32) or IsControlPressed(0, 33) or IsControlPressed(0, 34) or IsControlPressed(0, 35) then 
                        ClearPedTasks(pId)
                        SkipSeat = true
                        break 
                    end
                end 
                if not SkipSeat then 
                    ClearPedTasks(pId)
                    PlayerLastPos = GetEntityCoords(pId)
                    if AnimationsQuick[Cur_Anim].anim and not IsEntityPlayingAnim(pId, AnimationsQuick[Cur_Anim].dict, AnimationsQuick[Cur_Anim].anim,3) then 
                        loadAnimDict(AnimationsQuick[Cur_Anim].dict)
                        SetEntityCoords(pId, coords.x, coords.y, coords.z + AnimationsQuick[Cur_Anim].zOff )
                        SetEntityHeading(pId,heading)
                        FreezeEntityPosition(pId,true)
                        TaskPlayAnim(pId, AnimationsQuick[Cur_Anim].dict, AnimationsQuick[Cur_Anim].anim, 8.0, 1.0, -1, 1, 0, 0, 0, 1)
                        

                    elseif not IsPedUsingScenario(pId, AnimationsQuick[Cur_Anim].dict) then 
                        if SavedCoords then 
                            coords = SavedCoords 
                        end
                        SetEntityCoords(pId, coords.x, coords.y, coords.z + AnimationsQuick[Cur_Anim].zOff )
                        SetEntityHeading(pId,heading)
                        
                        Wait(100)
                        inScenario = true 
                        AnimationsQuick[Cur_Anim].entryAnimation = AnimationsQuick[Cur_Anim].entryAnimation or false 
                        TaskStartScenarioAtPosition(pId, AnimationsQuick[Cur_Anim].dict, coords.x, coords.y, coords.z + AnimationsQuick[Cur_Anim].zOff, heading, -1, AnimationsQuick[Cur_Anim].entryAnimation, true)
                        Wait(1)
                        FreezeEntityPosition(pId,true)
                    end
--------------------------------------------------------------------------------------------

                  

                    local options = {}
                    for i = 1, #AnimationsQuick do 
                        local CurrentAnim_Key = AnimationsQuick[i].anim
                        local CurrentDict_Key = AnimationsQuick[i].dict

                        if not CurrentAnim_Key and CurrentDict_Key and Config.AnimDescriptions[CurrentDict_Key] then 
                            AnimationsQuick[i].description = Config.AnimDescriptions[CurrentDict_Key].description 
                            AnimationsQuick[i].title = Config.AnimDescriptions[CurrentDict_Key].title 
                        elseif CurrentDict_Key and Config.AnimDescriptions[CurrentDict_Key] and CurrentAnim_Key and Config.AnimDescriptions[CurrentDict_Key][CurrentAnim_Key] then 
                            AnimationsQuick[i].description = Config.AnimDescriptions[CurrentDict_Key][CurrentAnim_Key].description 
                            AnimationsQuick[i].title = Config.AnimDescriptions[CurrentDict_Key][CurrentAnim_Key].title 
                        end 
                        
                        local NewInfo = { 
                            title = AnimationsQuick[i].title,
                            description = AnimationsQuick[i].description,
                            args = { 
                                current = AnimationsQuick,
                                ActiveAnimIndex = i,
                                coords = coords,
                                heading = heading,
                            },
                            onSelect = function(data)
                                TriggerEvent('ChairBedSystem:Client:AnyWhereSeat', AnimationsQuick[data.ActiveAnimIndex], data.coords, data.heading )
                                InUse = data.current
                                InUse.details = {}
                                InUse.details.skipExitScene = AnimationsQuick[data.ActiveAnimIndex].anim 
                                InUse.details.noExitCollision = AnimationsQuick[data.ActiveAnimIndex].noExitCollision
                                InUse.details.animation = {}
                                InUse.details.animation.Dict = AnimationsQuick[data.ActiveAnimIndex].dict
                                InUse.details.animation.Anim = AnimationsQuick[data.ActiveAnimIndex].anim
                                SeatActivation()
                            end
                        }
                        options[#options+1] = NewInfo
                    end 
                    local menuTitle = "SeatOptions"
                    local menuId = "Seat AnyWhere "
                    lib.registerContext({
                        id = menuId,
                        title = menuTitle,
                        options = options
                    })
                    currentmenu = menuId

                    InUse = AnimationsQuick[Cur_Anim]
                    InUse.details = {}
                    InUse.details.skipExitScene = AnimationsQuick[Cur_Anim].anim
                    InUse.details.noExitCollision = AnimationsQuick[Cur_Anim].noExitCollision
                    InUse.details.animation = {}
                    InUse.details.animation.Dict = AnimationsQuick[Cur_Anim].dict
                    InUse.details.animation.Anim = AnimationsQuick[Cur_Anim].anim
                    SeatActivation()
--------------------------------------------------------------------------------------------
                    learning = false
                end
                break
            end
        end
    end
    
end)


RegisterNetEvent('ChairBedSystem:Client:AnyWhereSeat')
AddEventHandler('ChairBedSystem:Client:AnyWhereSeat', function(v, coords,heading)
    v.zOff = v.zOff or 0 
    local ped = PlayerPedId()
    
    FreezeEntityPosition(ped, true)

    SetEntityCoords(ped, coords.x, coords.y, coords.z + v.zOff)
    SetEntityHeading(ped, heading)
    if v.anim then 
        Animation(v.dict, v.anim, ped)
    else
        inScenario = true 
        v.entryAnimation = v.entryAnimation or false 
        TaskStartScenarioAtPosition(ped, v.dict, coords.x, coords.y, coords.z + v.zOff, heading, 0, v.entryAnimation, true)
    end
end)
