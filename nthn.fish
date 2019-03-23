# Defined in /home/michael/.config/fish/buffer/nthn.fish @ line 2
function nthn
	while read -l line
        set acc $acc $line
    end
    set com awk "{print \S$argv}"
    echo $com
    # p $acc | awk "{print \${$argv[1]}}"
end
