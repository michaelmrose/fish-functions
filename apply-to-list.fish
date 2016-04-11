function apply-to-list
	set fn $argv[1]
    if test (count $argv) -gt 1
      set lst $argv[2..-1]
      for i in $lst
          eval $fn $i &
      end
    end
end
