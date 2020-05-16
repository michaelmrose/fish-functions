# Defined in /home/michael/.config/fish/buffer/restart.fish @ line 2
function restart
	killall $argv
    while pgrep $argv
    end
    $argv &
end
