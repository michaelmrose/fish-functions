# Defined in /home/michael/.config/fish/buffer/restart.fish @ line 2
function restart
	killall $argv
    sleep 1
    $argv &
    daj
end
