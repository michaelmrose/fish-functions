# Defined in /home/michael/.config/fish/buffer/hexcolor-to-hexchatcolor.fish @ line 1
function hexcolor-to-hexchatcolor
    set first (echo $argv |cut -c2-5)
    set second (echo $argv |cut -c6-9)
    set third (echo $argv |cut -c10-13)
    echo $first $second $third
end
