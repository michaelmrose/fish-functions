function get-i3-assignments
	set assignments (cat ~/.i3/config | grep "assign \[" | condense_spaces)
    set conditions (println $assignments | cut -d "[" -f2 | cut -d "]" -f1 | trim)
    set workspaces (println $assignments | cut -d " " -f4)
    for i in (range (count $assignments))
        echo $conditions[$i] $workspaces[$i]
    end
end
