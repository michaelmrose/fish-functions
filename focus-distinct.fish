function focus-distinct
	set current_class (winclass)
    set current_id (wininfo id dec)
    while true
        im focus $argv
        set next_class (winclass)
        if not match $current_class $next_class
            set new_id (wininfo id dec)
            break
        end
    end
    focus id $current_id
    focus id $new_id
end
