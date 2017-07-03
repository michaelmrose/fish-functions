function disks
	# sudo fdisk -l | grep 'Disk /dev/sd' | awk '{print $2}' | cut -d : -f1 | cut -d '/' -f3
  s fdisk -l | gr '^/dev/sd' | nth 1 | cut -c6-8 | sort -u
end
