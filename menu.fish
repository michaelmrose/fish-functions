# Defined in /home/michael/.config/fish/buffer/menu.fish @ line 2
function menu
	if test (count $argv) -gt 1
	      p $argv[2..-1] | rofi -dmenu -i -p $argv[1]
    else
        while read -l line
            set acc $acc $line
        end
        menu $argv[1] $acc
    end
end
