function set-io-sched
	echo $argv[1] | sudo tee /sys/block/$argv[2]/queue/scheduler
end
