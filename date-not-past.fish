function date-not-past
	set currentdate (date +%j)
    set date (convert-date-to-day-of-year $argv)
    set diff (math "$date - $currentdate")
    echo d is $diff
    if test $diff -lt -300
        set date (math $date + 365)
    end
    if test $diff -gt 60
      return 1
    end
    test $date -ge $currentdate
end
