# Defined in /home/michael/.config/fish/buffer/die.fish @ line 2
function die
	if exists $argv
        foreach (pgrep "$argv") "kill -9 _"
    else
	      xkill
    end
end
