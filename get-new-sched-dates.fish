function get-new-sched-dates
	set html $argv
    set dates (filter-with-expr date-not-past (get-dates-from-sched $html))
end
