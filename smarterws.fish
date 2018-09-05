# Defined in /home/michael/.config/fish/buffer/smarterws.fish @ line 1
function smarterws
	set target $argv
    #if workspace already exists
    if contains $target (i3-msg -t get_workspaces|jq .[]|jq -r ".name")
        i3 workspace $target
    else
        switch $target
            case a
                set layout tabbed
            case '*'
                set layout splith
        end
        i3 workspace $target
        i3 layout $layout
    end
end
