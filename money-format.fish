# Defined in /home/michael/.config/fish/buffer/money-format.fish @ line 1
function money-format
    if exists $argv
        printf '$%.2f\n' $argv|sed ':a;s/\B[0-9]\{3\}\>/,&/;ta'
    else
        while read -l line
            money-format $line
        end
    end
end
