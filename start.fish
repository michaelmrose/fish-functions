# Defined in /home/michael/.config/fish/buffer/start.fish @ line 2
function start
	set commandname $argv[1]
    set command $argv
    set focused ( i3-msg -t get_workspaces|jq -r '.[]| select(.focused == true).name')
    echo $focused > /tmp/fuckingstart/$commandname
    eval "$command &"
end
