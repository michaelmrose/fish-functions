# Defined in /home/michael/.config/fish/buffer/range-to-brace.fish @ line 2
function range-to-brace
	set acc "{"
    for i in (seq $argv[1] $argv[2])
        set acc $acc$i,
        echo acc is $acc
    end
    set acc $acc[1..-2]
    echo acc is now $acc
end
