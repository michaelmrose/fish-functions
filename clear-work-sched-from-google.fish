function clear-work-sched-from-google
	set title $argv[1]
    set begin $argv[2]
    set end $argv[3]
    # echo clearing all the events labeled work-at-thd from $argv[1] to $argv[2]
    gcalcli delete $title $begin $end --iamaexpert
end
