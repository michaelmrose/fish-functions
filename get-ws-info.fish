function get-ws-info
	set desired $argv[2]
    set var $argv[4]
    set val $argv[6] 

    if contains $desired x y width height
        set desired rect.$desired
    end
    i3-msg -t get_workspaces|jq .[]|jq -r "select(.$var == $val).$desired"
end
