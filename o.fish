# Defined in /usr/home/michael/.config/fish/buffer/o.fish @ line 2
function o
	if exists $argv
	      jaro $argv;
    else
        open-appropriate
    end
end
