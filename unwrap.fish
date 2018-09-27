# Defined in /home/michael/.config/fish/buffer/unwrap.fish @ line 2
function unwrap
	set first $argv[1]
    set second (closingchar $first)
    while read -l line
        echo $line | cut -d $first -f2- | cut -d $second -f1
    end
end
