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
            set ps (explode-words $p)
            # echo p is $p and d is $ps[1] f is $ps[2]
            set acc (echo $acc | cut -d $ps[1] -f $ps[2])
        end

        echo $acc
    end
end
