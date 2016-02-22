function open-subsect
	set target $argv[1]
  switch (count $argv)
    case 2
      set begin $argv[2]
      set end -1
    case 3
      set begin $argv[2]
      set end $argv[3]
    end
    set list (eval println $target)
    # set list (quote $list)
    println $list[$begin..$end]
    # println $list[$begin..$end]
    # echo fn is $fn target is $target begin is $begin end is $end
    # echo eval $fn (println (println $target)[$begin..end])
end
