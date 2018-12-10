# Defined in /home/michael/.config/fish/buffer/splice.fish @ line 2
function splice
	set ranges (echo $argv[1] | cut -d , -f1- --output-delimiter=" ")
    set vals $argv[2..-1]
    for r in $ranges
        echo $r
    end
end
