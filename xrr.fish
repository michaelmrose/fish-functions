function xrr
	switch $argv[1]
    case left
      xrr (get-disconnected-displays) (get-connected-displays)
    case right
      xrr (get-connected-displays) (get-disconnected-displays)
    case '*'
      set fn xrandr --auto --output $argv[1]
        set prior $argv[1]
        if test (count $argv) -gt 1
          for output in $argv[2..-1]
              set fn $fn --auto --output $output --right-of $prior
              set prior $output
          end
        end
        for output in (get-connected-displays)
          # echo o is $output and a is $argv
          if not contains $output $argv
            set fn $fn --output $output --off
          end
        end
        echo $fn;eval $fn
        wp recall
      end
end
