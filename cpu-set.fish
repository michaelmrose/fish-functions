function cpu-set
	sudo cpufreq-set -c 1 -f $argv GHz
    sudo cpufreq-set -c 0 -f $argv GHz
end
