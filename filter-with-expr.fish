function filter-with-expr
	set expr $argv[1]
  if test (count $argv) -gt 1
    set lst $argv[2..-1]
    for i in $lst
      set com $expr \'$i\'
      if eval $com
            echo $i
        end
    end
  end
end
