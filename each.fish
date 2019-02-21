# Defined in /home/michael/.config/fish/buffer/each.fish @ line 2
function each
	if string match _ $argv
        while read -l line
            eval (echo $argv | sd _ $line)
        end
    else
        while read -l line
            eval $argv $line
        end
        
    end
    return 0
end
