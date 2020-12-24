# Defined in /usr/home/michael/.config/fish/buffer/mpc-playback-status_mpd-info_m.fish @ line 2
function mpc-playback-status
		mpc status|sed -n 2p|choose -f '\[|\]' 0|g 'playing|paused'
end
