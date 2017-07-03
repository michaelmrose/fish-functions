function list-io-sched
	for d in (disks)
    echo $d = (cat /sys/block/$d/queue/scheduler)
  end
end
