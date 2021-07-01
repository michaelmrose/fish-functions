# Defined in /usr/home/michael/.config/fish/buffer/dolphin-open-path_dolphin-open.fish @ line 2
function max
	set biggest $argv[1]
    for i in $argv[2..-1]
        if test $i -gt $biggest
            set biggest $i
        end
    end
    echo $biggest
end
