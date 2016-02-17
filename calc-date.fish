function calc-date
	set date $argv[1..-3]
    set diff $argv[-2..-1]
    switch $date[1]
        case today
            set date (date)
    end
    date --date="$date $diff"
end
