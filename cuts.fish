# Defined in /home/michael/.config/fish/buffer/cuts.fish @ line 2
function cuts
	set delimiters (odds $argv)
    set nums (evens $argv)
    set paths (zip-lists $delimiters $nums)
    # echo p is
    # p $paths
    while read -l line
        set acc $line
        for p in $paths
            set ps (explode-words $p)
            set f $ps[2]
            # set d (string escape $ps[1])
            set d $ps[1]
            set acc (echo $acc | cut -d $d -f $d)
        end

        echo $acc
    end
end
