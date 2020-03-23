# Defined in /home/michael/.config/fish/buffer/inostd_money-format.fish @ line 13
function money-format
    if exists $argv
        printf '$%.2f ' $argv|sed ':a;s/\B[0-9]\{3\}\>/,&/;ta'
    else
        while read -l line
            money-format $line
        end
    end
end
