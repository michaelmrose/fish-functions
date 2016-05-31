function apply-to-list2
	set fn $argv[1]
    if test (count $argv) -gt 1
      set lst $argv[2..-1]
      for i in $lst
          echo (string replace @ $i $fn)
      end
    end
end
