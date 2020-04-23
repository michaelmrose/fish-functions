# Defined in /home/michael/.config/fish/buffer/if-set.fish @ line 2
function if-set
    set original $$argv[1]
    set new ($argv[2])
    echo $new
    # set $argv[1] 
end
