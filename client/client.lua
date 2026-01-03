local logoVisible = true

local function kvpKey(name)
    return ("MR_Logo:%s"):format(name)
end

local function applyState(state)
    logoVisible = state and true or false

    SendNUIMessage({
        action = "setVisible",
        visible = logoVisible
    })

    if Config.SaveState then
        SetResourceKvpInt(kvpKey("visible"), logoVisible and 1 or 0)
    end
end

local function loadSaved()
    if not Config.SaveState then
        return Config.EnabledByDefault ~= false 
    end

    local v = GetResourceKvpInt(kvpKey("visible"))
    if v == 0 then return false end
    if v == 1 then return true end
    return Config.EnabledByDefault ~= false
end

CreateThread(function()
    Wait (200)

    SendNUIMessage({
        action = "setup",
        anchor = Config.DefaultAnchor,
        size = Config.Size,
        opacity = Config.Opacity or 1.0,
        fade = Config.Fade
    })

    applyState(loadSaved())
end)

RegisterCommand(Config.Command or "togglelogo", function()
    applyState(not logoVisible)
end, false)

AddEventHandler("onResourceStop", function(res)
    if res ~= GetCurrentResourceName() then return end
    SendNUIMessage({ action = "setVisible", visible = false })
end)