function apply-if-t
	set fn $argv[1]
    if test (count $argv) -gt 1
      set lst (odds $argv[2..-1])
      set vals (evens $argv[2..-1])
      set ndx 1
      for i in $lst
          set str (string replace @ $i $fn)
          if not eval $str $vals[$ndx]
            return 1
          end
          set ndx (increase $ndx)
      end
    end
end
