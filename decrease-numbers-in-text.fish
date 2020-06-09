# Defined in /home/michael/.config/fish/buffer/decrease-numbers-in-text.fish @ line 1
function decrease-numbers-in-text
    echo $argv | perl -pe 's/(\d+)/$1-1/eg'
end
