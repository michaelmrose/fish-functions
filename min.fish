# Defined in /usr/home/michael/.config/fish/buffer/dolphin-open-path_dolphin-open.fish @ line 12
function min
	set smallest $argv[1]
    for i in $argv[2..-1]
        if test $i -lt $smallest
            set smallest $i
        end
    end
    echo $smallest

end
