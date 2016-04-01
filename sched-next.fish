function sched-next
	set hour (date '+%k')
  if test $hour -gt 15
    set filter event-in-future
  else
    set filter event-not-past
  end
  filter-with-expr $filter $CURRENT_SCHED | head -1
end
