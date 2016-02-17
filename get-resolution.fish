function get-resolution
	#identify $argv | sed "s#$argv##g" | trim | cut -d " " -f2
  identify $argv | cut -d " " -f3
end
