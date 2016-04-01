function event-in-future
	set date (echo $argv | cut -d " " -f5)
  set time 42
  if date-in-future $date
    return 0
  end
  if date-is-current -a not time-has-passed $time
    return 0
  else
    return 1
  end
end
