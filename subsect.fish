function subsect
	# set target $argv[1]
  # set range $argv[2]
  # set begin (echo $range | cut -d "." -f1)
  # set end (echo $range | cut -d "." -f3)
  # set list (eval println $target)
  # println $list[$begin..$end]
  # eval println (ls $argv[1])[$argv[2]]
  echo 1 is $argv[1]
  echo 2 is $argv[2]
  set foo (println 1 2 3)
  set list (eval println $argv[1])
  println $list
  println $foo[$argv[2]]
  # eval println (println $argv[1])[$argv[2]]
end
