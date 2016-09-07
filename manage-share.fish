function manage-share
	switch $argv[1]
    case ensure-mounted
      if ping 192.168.1.3 -c 1 -W 1
        if not ssh ls /mnt/michael/med
          mount /mnt/michael
        end
      end
    case ensure-unmounted
      if ping 192.168.1.3 -c 1 -W 1
        if ssh ls /mnt/michael/med
          umount /mnt/michael
        end
      end
  end
end
