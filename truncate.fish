# Defined in /home/michael/.config/fish/buffer/truncate.fish @ line 2
function truncate
    set len $argv[1]
    set direction $argv[2]
    set s $argv[3..-1]
    set size (echo $s|wc -c)
    if test $size -le $len
        echo $s
    else
        switch $direction
        case right
            set start (math $size - (math $len - 1))
            set end $size
        case left
            set start 1
            set end $len
        end
        echo $s |  cut -c{$start}-{$end}
    end
end
