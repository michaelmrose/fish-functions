function get-tabs
	set tabs (gettabs.sh)
    set titles (gettabtitles.sh)
    set cnt 1
    for i in $tabs
        set result "$titles[$cnt] $tabs[$cnt]"
        set cnt (math "$cnt +1")
        set lst $lst $result
    end
    println $lst
end
