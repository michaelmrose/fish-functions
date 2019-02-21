# Defined in /home/michael/.config/fish/buffer/interleave.fish @ line 1
function interleave
	while read -l line
        set acc $acc $arg $line
    end
    echo $acc
end
