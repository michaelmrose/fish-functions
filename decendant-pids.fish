function decendant-pids
	set pids (ps -o pid= --ppid $argv)
	set collect $pids
	echo c is now $collect
	for pid in $pids
		set collect $collect (decendant-pids $pid)
	echo c is now $collect
	end
	p $collect
end
