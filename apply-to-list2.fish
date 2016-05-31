function apply-to-list2
	set fn $argv[1]
    if test (count $argv) -gt 1
      set lst $argv[2..-1]
      for i in $lst
          set str (string replace @ $i $fn)
          eval $str
      end
    end
end
