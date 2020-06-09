# Defined in /home/michael/.config/fish/buffer/incriment-numbers-in-text.fish @ line 1
function incriment-numbers-in-text
    echo $argv perl -pe 's/(\d+)/$1+1/eg'
end
