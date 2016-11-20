function iosched
	switch $argv[1]
    case ls
      if test (count $argv) -gt 1
        iosched-get $argv[2]
      else
        apply-to-list iosched-get (disks)
      end
  end
end
