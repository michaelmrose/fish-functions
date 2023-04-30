function select
	if exists $argv
	      if test (count $argv) -gt 1
            p $argv | rofi -dmenu -m -1 -I -p 'choose: ' 
        else
            echo $argv
        end
    else
        # while read -l line
        #     set acc $acc $line
        # end
		read | rofi -dmenu -m -1 -l -p 'choose'
        # select $acc
    end
end
