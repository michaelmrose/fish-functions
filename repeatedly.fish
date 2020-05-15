# Defined in /home/michael/.config/fish/buffer/repeatedly.fish @ line 2
function repeatedly
    if isnumeric $argv[1]
        set t $argv[1]
        set c $argv[2..-1]
    else
        set t 1
        set c $argv
    end
    
    while true
        $c
        sleep $t
    end
end
