function disks
	sudo fdisk -l | grep 'Disk /dev/sd' | awk '{print $2}' | cut -d : -f1 | cut -d '/' -f2
end
