# Defined in /home/michael/.config/fish/buffer/restart.fish @ line 1
function restart
	killall $argv
    sleep 1
    $argv &
end
