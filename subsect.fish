function subsect
	set target $argv[1]
  set range $argv[2]
  set begin (echo $range | cut -d "." -f1)
  set end (echo $range | cut -d "." -f3)
  set list (eval println $target)
  println $list[$begin..$end]
end
