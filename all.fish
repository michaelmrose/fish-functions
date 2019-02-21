# Defined in /home/michael/.config/fish/buffer/all_each.fish @ line 2
function all
	if string match _ $argv > /dev/null
        while read -l line
            set acc $acc \'$line\'
        end
        eval (echo $argv | sd _ $acc)
    else
        while read -l line
            set acc $acc \'$line\'
        end
        eval $argv $acc
    end
end
