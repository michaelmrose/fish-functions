function sched-me
	set -U schedule_updated (date)
    set new (println (get-new-work-sched))
    set current (println (get-current-work-sched))
    echo new
    println $new
    echo current
    println $current
    for i in $current
        if not contains $i $new
            set date (cutlast " " $i)
            delete-from-calendar $date
        end
    end
    for i in $new
        if not contains $i $current
            add-to-calendar $i
        end
    end
end
