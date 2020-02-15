# Defined in /home/michael/.config/fish/buffer/game_runp2_xrr.fish @ line 2
function game
	xrr desktop
    killall compton
    sleep 0.25
    optirun $argv
    sleep 1
    xrr double
    compton &
end
