function get-current-work-sched
	# set schedule (gcalcli search work-at-thd --details length --nocolor | condense_spaces)
	set schedule (gcalcli search work-at-thd --details length --nocolor | sed 's/\s\+/ /g' | sed -e 's/^ *//' -e 's/ *$//')
    set dates (println $schedule | grep -E '^[0-9]' | cut -d ' ' -f1 | cut -d '-' -f2-)
    set starts (println $schedule | grep -E '^[0-9]' | cut -d ' ' -f2)
    set events ''
    for i in (seq (count $dates))
        set addhour (println $schedule | grep -A1 "$dates[$i]" | grep Length | cut -d " " -f2 | cut -d : -f1)
        set addminute (println $schedule | grep -A1 "$dates[$i]" | grep Length | cut -d " " -f2 | cut -d : -f2)
        set end (date '+%-I:%M%p' --date="$starts[$i] + $addhour hour $addminute minute")
        set date (echo $dates[$i] | sed 's#-#/#g')
        set finalval (echo $starts[$i] - $end $date | sed -e 's/PM/p/g' -e 's/pm/p/g' -e 's/AM/a/g' -e 's/am/a/g')
        set events[$i] "work-at-thd $finalval"
    end
    set events (filter-with-expr event-not-past $events)
    println $events
end
