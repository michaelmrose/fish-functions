# Defined in /home/michael/.config/fish/buffer/closingchar.fish @ line 2
function closingchar
	set first $argv[1]
    switch $first
        case '(' 
            echo ')'
        case '['
            echo ']'
        case '{'
            echo '}'
        case '*'
            echo $first
    end
end
