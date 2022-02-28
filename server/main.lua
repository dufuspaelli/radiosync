RegisterNetEvent("syncSong", function(song)


    TriggerClientEvent("syncSongClient", -1, song)

end)