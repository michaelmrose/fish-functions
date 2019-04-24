# Defined in /home/michael/.config/fish/buffer/tdown.fish @ line 2
function tdown
	if not exists $argv
      set input (rofim -dmenu -i -p duration:)
  else
        set input $argv
    end
	  kitty -1 -e termdown $input
end
