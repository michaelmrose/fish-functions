function apply-to-list2
	set fn $argv[1]
    if test (count $argv) -gt 1
      set lst $argv[2..-1]
      for i in $lst
          set str (string replace @ $i $fn)
          if eval $str
            return 1
          end
      end
    end
end
