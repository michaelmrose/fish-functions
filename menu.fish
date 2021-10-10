function menu
	if test (count $argv) -gt 1
	    p $argv[2..-1] | rofi -dmenu -i -lines (min (decrease (count $argv)) 20) -no-fixed-num-lines -location 2 -p $argv[1] -m -1
  else
        while read -l line
            set acc $acc $line
        end
        menu $argv[1] $acc
    end
end
