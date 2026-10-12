local BaseUrl = "https://raw.githubusercontent.com/maksql765-boop/Abysall_Archives/refs/heads/main/"

if game.PlaceId ~= 6516141723 then
    loadstring(game:HttpGet(BaseUrl .. "Games/Doors/Main.luau"))()
else
    loadstring(game:HttpGet(BaseUrl .. "Games/Doors/Lobby.luau"))()
end
