# radiosync
Proof of concept for syncing radio playback on FiveM

## Notes
- This is not a production ready resource. Its a proof of concept for server sided radio sync - do not use in your server unless you know what you're doing.
- Made possible by [Monkeypolice188's](https://github.com/Monkeypolice188) audio research, strings of song names come [from his research](https://github.com/Monkeypolice188/Monkys-Audio-Research/blob/main/.nametables/.txt/sounds.dat54.nametable.txt).
- Some DLC trackname strings seem to be missing, which causes the sync break for newer channels.
## Blonded & (maybe) other DLC radios
- Blonded can't be synced this way as far as I can tell. Instead of having individual song files, its a mix comprised of three 30 minute files. 
- Unlike other channels, `GetCurrentRadioTrackName("radio_21_dlc_xm17_radio")` returns one of 3 hashes for those files, either `DLC_CHRISTMAS2017_RADIO_XM17_P1`, `DLC_CHRISTMAS2017_RADIO_XM17_P2` or `DLC_CHRISTMAS2017_RADIO_XM17_P3`.
- On other channels, that string can be used to `SetRadioTrack`, but in Blonded, you only have 3 points available, so syncing without having access to some sort of setting method for `GetCurrentRadioTrackPlaybackTime` would require huge restarts for the "host".
- This might be the case for newer DLC radios too.