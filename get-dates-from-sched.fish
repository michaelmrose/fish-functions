function get-dates-from-sched
	echo $argv | pup 'div[class="date"] span text{}'
end
