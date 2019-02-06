# Defined in /home/michael/.config/fish/buffer/select.fish @ line 2
function select
	if test (count $argv) -gt 1
	      p $argv | rofi -dmenu -I -p 'choose: ' 
    else
        echo $argv
    end
end
