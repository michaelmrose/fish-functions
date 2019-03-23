# Defined in /home/michael/.config/fish/buffer/nthn.fish @ line 1
function nthn
	while read -l line
        set acc $acc $line
    end
    p $acc | awk "{print \${$argv[1]}}"
end
