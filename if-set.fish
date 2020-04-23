# Defined in /home/michael/.config/fish/buffer/if-set.fish @ line 2
function if-set
    set new (eval $argv[2..-1])
    if exists $new
        set $argv[1] $new
    end
end
