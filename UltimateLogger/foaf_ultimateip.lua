------------------------------------
--███████╗░█████╗░░█████╗░███████╗--
--██╔════╝██╔══██╗██╔══██╗██╔════╝--
--█████╗░░██║░░██║███████║█████╗░░--
--██╔══╝░░██║░░██║██╔══██║██╔══╝░░--
--██║░░░░░╚█████╔╝██║░░██║██║░░░░░--
--╚═╝░░░░░░╚════╝░╚═╝░░╚═╝╚═╝░░░░░--
------------------------------------

AddEventHandler('playerConnecting', function()
local src = source
local ids = ExtractIdentifiers(src);
local user = ExtractIdentifiers(src);
local playerLicense = ids.license;
local licenseid = playerLicense:gsub('license2:', '')
local playerSteam = ids.steam;
local playerXbl = ids.xbl;
local xblid = playerXbl:gsub('xbl:', '')
local discord = ids.discord;
local discordid = discord:gsub('discord:', '')
local playerIP = ids.ip;
local iplog = playerIP:gsub('ip:', '')
local name = GetPlayerName(source)
local ping = GetPlayerPing(source)
local connect = {
        {
            ["color"] = FoafUltimateLog.EmbedColor,
            ["title"] = "Player Connected to the Server",
            ["description"] = "Player: **"..name.."**\nDiscord: <@"..discordid..">\nDiscord ID: **"..discordid.."**\nSteam Hex: **"..playerSteam.."**\nGame License: **"..licenseid.."**\nXbox Live: **"..xblid.."**\nIP: **"..iplog.."**",
	        ["footer"] = {
                ["text"] = "Made By: Foaf#0001 | Foafs Ultimate Log ADMIN",
                ["icon_url"] = FoafUltimateLog.Logo,
            },
        }
    }

PerformHttpRequest(FoafUltimateLog.WebhookIP, function(err, text, headers) end, 'POST', json.encode({username = FoafUltimateLog.ServerName, embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('playerDropped', function(reason)

local src = source
local ids = ExtractIdentifiers(src);
local user = ExtractIdentifiers(src);
local playerLicense = ids.license;
local licenseid = playerLicense:gsub('license2:', '')
local playerSteam = ids.steam;
local playerXbl = ids.xbl;
local xblid = playerXbl:gsub('xbl:', '')
local discord = ids.discord;
local discordid = discord:gsub('discord:', '')
local playerIP = ids.ip;
local iplog = playerIP:gsub('ip:', '')
local name = GetPlayerName(source)
local ping = GetPlayerPing(source)
local disconnect = {
        {
            ["color"] = FoafUltimateLog.EmbedColor,
            ["title"] = "Player Disconnected from the Server",
            ["description"] = "Player: **"..name.."**\nReason: **"..reason.."**\nDiscord: <@"..discordid..">\nDiscord ID: **"..discordid.."**\nSteam Hex: **"..playerSteam.."**\nGame License: **"..licenseid.."**\nXbox Live: **"..xblid.."**\nIP: **"..iplog.."**",
	        ["footer"] = {
                ["text"] = "Made By: Foaf#0001 | Foafs Ultimate Log ADMIN",
                ["icon_url"] = FoafUltimateLog.Logo,
            },
        }
    }

    PerformHttpRequest(FoafUltimateLog.WebhookIP, function(err, text, headers) end, 'POST', json.encode({username = FoafUltimateLog.ServerName, embeds = disconnect}), { ['Content-Type'] = 'application/json' })
end)

function ExtractIdentifiers(src)
    local identifiers = {
        steam = "",
        ip = "",
        discord = "",
        license = "",
        xbl = "",
        live = ""
    }

    for i = 0, GetNumPlayerIdentifiers(src) - 1 do
        local id = GetPlayerIdentifier(src, i)

        if string.find(id, "steam") then
            identifiers.steam = id
        elseif string.find(id, "ip") then
            identifiers.ip = id
        elseif string.find(id, "discord") then
            identifiers.discord = id
        elseif string.find(id, "license") then
            identifiers.license = id
        elseif string.find(id, "xbl") then
            identifiers.xbl = id
        elseif string.find(id, "live") then
            identifiers.live = id
        end
    end

    return identifiers
end

local credits = [[                                                                                                                                                                             
FoafLogADMIN Started....
]]

Citizen.CreateThread(function()
print(credits)
end)

------------------------------------------------------------------------------------------------
--██╗░░░██╗██╗░░░░░████████╗██╗███╗░░░███╗░█████╗░████████╗███████╗  ██╗░░░░░░█████╗░░██████╗░--
--██║░░░██║██║░░░░░╚══██╔══╝██║████╗░████║██╔══██╗╚══██╔══╝██╔════╝  ██║░░░░░██╔══██╗██╔════╝░--
--██║░░░██║██║░░░░░░░░██║░░░██║██╔████╔██║███████║░░░██║░░░█████╗░░  ██║░░░░░██║░░██║██║░░██╗░--
--██║░░░██║██║░░░░░░░░██║░░░██║██║╚██╔╝██║██╔══██║░░░██║░░░██╔══╝░░  ██║░░░░░██║░░██║██║░░╚██╗--
--╚██████╔╝███████╗░░░██║░░░██║██║░╚═╝░██║██║░░██║░░░██║░░░███████╗  ███████╗╚█████╔╝╚██████╔╝--
--░╚═════╝░╚══════╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝  ╚══════╝░╚════╝░░╚═════╝░--
------------------------------------------------------------------------------------------------