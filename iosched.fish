function iosched
	switch $argv[1]
    case ls
      if test (count $argv) -gt 1
        apply-to-list iosched-get $argv[2..-1]
      else
        apply-to-list iosched-get (disks)
      end
    case set
      apply-to-list "iosched-set $argv[2]" $argv[3..-1]
  end
end
