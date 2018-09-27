# Defined in /home/michael/.config/fish/buffer/cuts.fish @ line 2
function cuts
	set delimiters (odds $argv)
    set nums (evens $argv)
    set paths (zip-lists $delimiters $nums)
    echo p is
    p $paths
    while read -l line
        set acc $line
        for p in $paths
            set acc (echo $acc | cut -d $p[1] -f $p[2])
        end

    end
end
