# Defined in /home/michael/.config/fish/buffer/range-to-brace.fish @ line 2
function range-to-brace
	set s (seq $argv[1] $argv[2])
    set acc "{"
    for i in s[1..-2]
        set acc $acc$i,
        echo $acc
    end
    echo $acc
end
