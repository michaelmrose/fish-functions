function get-sched-for-day
	set day $argv[1]
    set doc $argv[2..-1]
    set val (echo $doc | pup | grep -A4 $day | trim | grep -E '^[0-9]{1,2}:[0-9]{1,2}\S.' | sort -u)
    if exists $val
        echo $val
    end
end
