function open-subsect
	set fn $argv[1]
  set target $argv[2]
  switch (count $argv)
    case 3
      set begin $argv[3]
      set end -1
    case 4
      set begin $argv[3]
      set end $argv[4]
    end
    echo eval $fn (println (println $target)[$begin..end])
end
