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
            echo p is $p and d is $p[1] f is $p[2]
            # set acc (echo $acc | cut -d $p[1] -f $p[2])
        end

    end
end
