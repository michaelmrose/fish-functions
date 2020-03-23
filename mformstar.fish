# Defined in /home/michael/.config/fish/buffer/inostd_money-format.fish @ line 23
function mformstar
    printf '$%.2f ' $argv|sed ':a;s/\B[0-9]\{3\}\>/,&/;ta'
end
