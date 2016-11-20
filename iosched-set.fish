function iosched-set
	echo $argv[2] | sudo tee /sys/block/$argv[1]/queue/scheduler
end
