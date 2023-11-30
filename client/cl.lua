RegisterNetEvent('picaroon:showAd')
AddEventHandler('picaroon:showAd', function(logo, message, backgroundColor, barColor, titleTextColor)
    print(logo)
    print(message)
    SendNUIMessage({
        type = 'showAd',
        logo = logo,
        message = message,
        backgroundColor = backgroundColor,
        barColor = barColor,
        titleTextColor = titleTextColor
    })
end)