function decendant-pids
	set pids (ps -o pid= --ppid $argv)
	set collect $pids
	for pid in $pids
		set collect $collect (decendant-pids $pid)
	end
	p $collect
end
