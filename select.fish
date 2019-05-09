# Defined in /home/michael/.config/fish/buffer/select.fish @ line 2
function select
	if exists $argv
	      if test (count $argv) -gt 1
            p $argv | rofi -dmenu -m -1 -I -p 'choose: ' 
        else
            echo $argv
        end
    else
        while read -l line
            set acc $acc $line
        end
        select $acc
    end
end
