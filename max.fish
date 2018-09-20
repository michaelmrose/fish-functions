# Defined in /home/michael/.config/fish/buffer/greatestof_max.fish @ line 15
function max
	set biggest $argv[1]
    for i in $argv[2..-1]
        if test $i -gt $biggest
            set biggest $i
        end
    end
    echo $biggest
end
