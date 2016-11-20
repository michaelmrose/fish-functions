function iosched-get
	set val (cat /sys/block/$argv[1]/queue/scheduler)
  echo $argv[1]: $val
end
