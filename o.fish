# Defined in /home/michael/.config/fish/buffer/o.fish @ line 2
function o
	if exists $argv
	      gio open $argv;
    else
        open-appropriate
    end
end
