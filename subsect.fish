function subsect
	set target $argv[1]
  set range $argv[2]
  set begin (echo $range | cut -d "." -f1)
  set end (echo $range | cut -d "." -f3)
  # switch (count $argv)
  #   case 1
  #     set begin 1
  #     set end -1
  #   case 2
  #     set begin $argv[2]
  #     set end -1
  #   case 3
  #     set begin $argv[2]
  #     set end $argv[3]
  #   end
  # println (println $target)[$begin..$end]
    set list (eval println $target)
    println $list[$begin..$end]
end
