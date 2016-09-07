function manage-share
	switch $argv[1]
    case ensure-mounted
      if all linda-desktop-exits share-mounted
        echo hi
      end
    end
end
