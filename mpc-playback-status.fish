# Defined in /usr/home/michael/.config/fish/buffer/mpc-playback-status.fish @ line 2
function mpc-playback-status
		mpc status|sed -n 2p|choose -f '\[|\]' 0|g 'plarg|paused'
end
