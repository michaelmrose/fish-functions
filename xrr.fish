function xrr
	set fn xrandr --auto --output $argv[1]
    set prior $argv[1]
    if test (count $argv) -gt 1
      for output in $argv[2..-1]
          set fn $fn --auto --output $output --right-of $prior
          set prior $output
      end
    end
    for output in (get-connected-displays)
      if not contains $output $argv
        set fn $fn --output $output --off
      end
    end
    echo $fn;eval $fn
    wp recall
end
