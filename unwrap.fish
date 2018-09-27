# Defined in /home/michael/.config/fish/buffer/unwrap.fish @ line 1
function unwrap
	set first $argv[1]
    switch $first
        case '(' 
            set second ')'
    end
end
