# Defined in /home/michael/.config/fish/buffer/unwrap.fish @ line 11
function closingchar
	set first $argv[1]
    switch $first
        case '(' 
            echo ')'
        case '['
            echo ']'
        case '{'
            echo '}'
    end
end
