# Defined in /home/michael/.config/fish/buffer/range-to-brace.fish @ line 2
function range-to-brace
	set acc "{"
    for i in (seq $argv[1] $argv[2])
        set acc $i{$acc},
    end
    echo $acc[1..-2]
end
