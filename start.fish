# Defined in /home/michael/.config/fish/buffer/get-command-for-window_place_s.fish @ line 23
function start
	set commandname $argv[1]
    set command $argv
    set focused ( i3-msg -t get_workspaces|jq -r '.[]| select(.focused == true).name')
    echo $focused > /tmp/fuckingstart/$commandname
    eval $command &
end
