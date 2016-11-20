function iosched-get
	cat /sys/block/$argv[1]/queue/scheduler
end
