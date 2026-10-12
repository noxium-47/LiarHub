if Liar then
    return
end
getgenv().Liar = {
    Legit = true
}

local GameList = {
    [2440500124] = "Doors"
}

local BaseUrl = "https://raw.githubusercontent.com/<твой-ник>/<твой-репо>/main/"
getgenv().Liar = {
    Environment = loadstring(game:HttpGet(BaseUrl .. "Components/Environment.luau"))(),
    ESPLibrary  = loadstring(game:HttpGet(BaseUrl .. "Components/ESP.luau"))(),

    Legit = true, -- pog
}

local function CloneReference(Object)
    if Liar and Liar.Environment.cloneref then
        return Liar.Environment.cloneref(Object)
    else
        return Object
    end
end

local Services = setmetatable({}, {
    __index = function(self, Name)
        return CloneReference(game:GetService(Name))
    end
})

if Liar.Environment.writefile and Liar.Environment.readfile then
    if not Liar.Environment.isfile("Liar/UserData.json") then
        local Data = {
            TotalExecutions = 0,
            UILibrary = "Obsidian"
        }
        Liar.Environment.writefile("Liar/UserData.json", Services.HttpService:JSONEncode(Data))
    end

    local UserData = Liar.Environment.readfile("Liar/UserData.json")
    local Decoded = Services.HttpService:JSONDecode(UserData)
    if not Decoded.TotalExecutions then
        Decoded.TotalExecutions = 0
    end

    Decoded.TotalExecutions = Decoded.TotalExecutions + 1

    if not Decoded.UILibrary then
        Decoded.UILibrary = "Obsidian"
    end

    Liar.TotalExecutions = Decoded.TotalExecutions
    Liar.UILibrary = Decoded.UILibrary

    Liar.Environment.writefile("Liar/UserData.json", Services.HttpService:JSONEncode(Decoded))
end

Liar.Interface = loadstring(game:HttpGet(BaseUrl .. "Components/Interface.luau"))()
Liar.Analytics = loadstring(game:HttpGet(BaseUrl .. "Components/Analytics.luau"))()

local CurrentGame = GameList[game.GameId]
if CurrentGame then
    loadstring(game:HttpGet(BaseUrl .. "Games/" .. CurrentGame .. "/Loader.luau"))()
else
    loadstring(game:HttpGet(BaseUrl .. "Games/Universal/Loader.luau"))()
end
