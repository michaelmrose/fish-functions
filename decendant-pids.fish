function decendant-pids
	# echo called with $argv
	if not exists $argv
		return 0
	end
	set pids (ps -o pid= --ppid $argv)
	set collect $pids
	for pid in $pids
		set collect $collect (decendant-pids $pid)
	end
	p $collect
end
