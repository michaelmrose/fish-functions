function decendant-pids
	if test (count $argv) -gt 0
	  set pids (ps -o pid= --ppid $argv)
	  set collect $pids
	  for pid in $pids
		  set collect $collect (decendant-pids $pid)
	  end
	  p $collect
	end
end
