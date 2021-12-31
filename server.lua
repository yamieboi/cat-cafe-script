local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('yamiepizzaboy-Payment')
AddEventHandler('yamiepizzaboy-Payment', function()
	local Player = QBCore.Functions.GetPlayer(source)
    local payment = math.random(600,620)
    Player.Functions.AddMoney("cash", payment, "sold-pizza")
    TriggerClientEvent("QBCore:Notify", source, "You were charged a deposit of $"..payment.."", "error")
end)

RegisterServerEvent('yamiepizzaboy-TakeDeposit')
AddEventHandler('yamiepizzaboy-TakeDeposit', function()
	local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveMoney("bank", 100, "pizza-deposit")
end)

RegisterServerEvent('yamiepizzaboy-ReturnDeposit')
AddEventHandler('yamiepizzaboy-ReturnDeposit', function(info)
    local Player = QBCore.Functions.GetPlayer(source)
    
    if info == 'cancel' then
        Player.Functions.AddMoney("cash", 50, "pizza-return-vehicle")
        TriggerClientEvent("QBCore:Notify", source, "You returned the vehicle and recieved your deposit back", "success")
    elseif info == 'end' then
        Player.Functions.AddMoney("cash", 150, "pizza-return-vehicle")
        TriggerClientEvent("QBCore:Notify", source, "You returned the vehicle and recieved your deposit back", "success")
    end
end)
