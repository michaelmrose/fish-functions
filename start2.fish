# Defined in /home/michael/.config/fish/buffer/place_start.fish @ line 29
function start2
	set commandname $argv[1]
    set command $argv
    set focused ( i3-msg -t get_workspaces|jq -r '.[]| select(.focused == true).name')
    echo $focused > /tmp/fuckingstart/$commandname
    eval "$command &"
    while not string match commandname (get-command-for-window)
    end
    place
end
