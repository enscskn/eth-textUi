local QBCore = exports['qb-core']:GetCoreObject()

function Show(title, content)
    SendNUIMessage({
        action = "open",
        title = title,
        content = content
    })
end

function Close()
    SendNUIMessage({
        action = "close",
    })
end

RegisterCommand('open', function(source, args, rawCommand)
    if #args < 2 then
        Show(args[1])
        return
    end
    Show(args[1], args[2])
end)

RegisterCommand('close', function(source, args, RawCommand)
    Close()
end)

exports("Show", Show)
exports("Close", Close)