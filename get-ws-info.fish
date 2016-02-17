function get-ws-info
	switch (count $argv)
        case 3
            set desired $argv[1]
            set var $argv[2]
            set val $argv[3]
        case 6
            set desired $argv[2]
            set var $argv[4]
            set val $argv[6] 
        end

    if contains $desired x y width height
        set desired rect.$desired
    end
    i3-msg -t get_workspaces|jq .[]|jq -r "select(.$var == $val).$desired"
end
