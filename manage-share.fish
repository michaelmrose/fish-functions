function manage-share
	switch $argv[1]
    case ensure-mounted
      if all linda-desktop-exists 'not share-mounted'
        ssh linda loaddirs.sh
        sleep 3
      end
    case ensure-unmounted
      if all linda-desktop-exists share-mounted
        ssh linda umount -l /mnt/michael
        sleep 3
      end
    end
end
