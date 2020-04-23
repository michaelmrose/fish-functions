# Defined in /home/michael/.config/fish/buffer/if-set.fish @ line 2
function if-set
    set original $$argv[1]
    set new (eval $argv[2..-1])
    echo $new
    # set $argv[1] 
end
