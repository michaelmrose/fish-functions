function date-not-past
	set currentdate (date +%j)
    set date (convert-date-to-day-of-year $argv)
    # set diff (math "$date - $currentdate")
    # if test $diff -lt -300
    #     set date (math $date + 365)
    # end
    test $date -ge $currentdate
end
