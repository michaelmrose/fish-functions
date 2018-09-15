# Defined in /home/michael/.config/fish/buffer/restart-app.fish @ line 1
function restart-app
	killall $argv[1]
    sleep 0.5
    for i in (pgrep $argv[1])
        kill -9 $i
    end
    sleep 0.5
    eval $argv
end
