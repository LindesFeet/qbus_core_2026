local x=0

CreateThread(function()
    while true do
        Wait(math.random(4200, 6900))
        x=x+1
        TriggerClientEvent('chat:addMessage', -1, {
            color = {69, 105, 255},
            multiline = true,
            args = {"🥴", "Happy Healthly Lua Leaks by QBUS™️ #" .. x}
        })
    end
end)
