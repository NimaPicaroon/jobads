if Config.Framework == "esx" then 
    ESX = exports["es_extended"]:getSharedObject()
else
    QBCore = exports['qb-core']:GetCoreObject()
end

RegisterCommand(Config.Command, function(source, args, rawCommand)
    if Config.Framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer then
            local job = xPlayer.job.name
            local message = table.concat(args, ' ')
            if Config.Trabajos[job] then
                local logo = Config.Trabajos[job].logo
                TriggerClientEvent('picaroon:mostraranuncio', -1, logo, message, Config.Trabajos[job].colorfondo, Config.Trabajos[job].colorbarra, Config.Trabajos[job].colorletratitulo)
            else
                TriggerClientEvent('chatMessage', source, '^1Error^7', {255, 0, 0}, 'You cannot send ads from this job.')
            end
        end
    else
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if xPlayer then
            local job = xPlayer.PlayerData.job.name
            local message = table.concat(args, ' ')
            if Config.Trabajos[job] then
                local logo = Config.Trabajos[job].logo
                TriggerClientEvent('picaroon:mostraranuncio', -1, logo, message, Config.Trabajos[job].colorfondo, Config.Trabajos[job].colorbarra, Config.Trabajos[job].colorletratitulo)
            else
                TriggerClientEvent('chatMessage', source, '^1Error^7', {255, 0, 0}, 'You cannot send ads from this job.')
            end
        end
    end
end, false)