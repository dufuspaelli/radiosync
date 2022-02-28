RegisterNetEvent("syncSongClient", function(song)
	local station = GetPlayerRadioStationName()
	local songHash = GetCurrentRadioTrackName(station)

	if songHash == GetHashKey(song) then 
		print("song already synced")
	else
		FreezeRadioStation(station)
		SetRadioTrack(station, song)
	end


end)

CreateThread(function()
	while true do
		local car = GetVehiclePedIsIn(PlayerPedId(), false)
		local driver = GetPedInVehicleSeat(car, -1)

        if driver == PlayerPedId() then 
			local station = GetPlayerRadioStationName()
			local songHash = GetCurrentRadioTrackName(station)
			print(station)
			for i = 1, #RadioList do
				local compareHash = GetHashKey(RadioList[i])
				--print(RadioList[i])
				if compareHash == songHash then 
					print("song matched to.." .. RadioList[i])
					TriggerServerEvent("syncSong", RadioList[i])

				end
			end
		end
		Wait(1000)
	end

end)
