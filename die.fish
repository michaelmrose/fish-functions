function die
	if exists $argv
        foreach (pgrep "$argv") "kill -9 _"
    else
	      xkill
    end
end
