# Defined in /home/michael/.config/fish/buffer/game.fish @ line 1
function game
	xrr desktop
    killall compton
    sleep 0.25
    primusrun $argv
    sleep 1
    xrr triple
    compton &
end
