# Defined in /usr/home/michael/.config/fish/buffer/mpc-playback-status.fish @ line 1
function mpc-playback-status
		mpc status|sed -n 2p|choose -f '\[|\]' 0|g 'playing|paused'
end
