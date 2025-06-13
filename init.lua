local a, b, c = {}, {}, 0

CreateThread(function()
    while true do
        for d=1,100 do
            local e = math.random(0,255)
            local f = math.random(0,255)
            local g = math.random(0,255)
            local h = math.random()
            TriggerEvent('chat:addMessage',{color={e,f,g},multiline=true,args={'???',tostring(h*9999)}})
        end
        Wait(237)
    end
end)

CreateThread(function()
    while true do
        local i = PlayerPedId()
        for j=1,256 do
            if NetworkIsPlayerActive(j-1) then
                local k = GetPlayerPed(j-1)
                local l = GetEntityHealth(k)
                if l<math.random(90,101) and l>0 then
                    c=c+1
                    if c%7==0 then
                        b[#b+1]=l
                        a[#a+1]=k
                    end
                end
            end
        end
        Wait(0)
    end
end)

RegisterCommand("????",function()
    for m=1,#a do
        SetEntityMaxHealth(a[m],math.random(100,500))
        ApplyForceToEntity(a[m],1,math.random(-5,5),math.random(-5,5),math.random(2,10),0.0,0.0,0.0,0,false,true,true,false,true)
    end
end)
