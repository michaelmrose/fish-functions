function manage-share
	switch $argv[1]
    case ensure-mounted
      if all linda-desktop-exists 'not share-mounted'
        ssh linda loaddirs.sh
      end
    case ensure-unmounted
      if all linda-desktop-exists share-mounted
        ssh linda umount /mnt/michael
      end
    end
end
