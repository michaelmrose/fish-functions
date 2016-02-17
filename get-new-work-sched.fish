function get-new-work-sched
	set html (get-sched-html)
    set dates (filter-with-expr date-not-past (get-dates-from-sched $html))
    # clear-work-sched-from-google work-at-thd $dates[1] $dates[-1]
    for day in $dates
        set hours (get-sched-for-day $day $html)
        if exists $hours
        # if set hours (get-sched-for-day $day $html)
            # echo adding $hours $day to google calendar
            echo work-at-thd $hours $day
        end
    end
end
