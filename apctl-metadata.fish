function apctl-metadata
	for entry in $argv
      if startswith @ $entry
        set res $res (echo $entry | cut -d @ -f2-)
      else
        set res $res (playerctl -p $active metadata $entry)
      end
    end
    echo $res
end
