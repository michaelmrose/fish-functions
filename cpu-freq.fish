function cpu-freq
	cpufreq-info | grep -i "current CPU" | cut -d " " -f7-
end
