function watch-cpu-usage
	while true
        cpuusage $argv
        sleep 1
    end
end
