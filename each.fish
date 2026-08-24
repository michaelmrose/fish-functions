function each
    if exists $argv
        p * |  each $argv
        return 0
    end
    if string match _  -- "$argv" > /dev/null
        while read -l line
            eval (echo $argv | sd _ $line)
        end
    else
        while read -l line
            eval $argv $line
        end

    end
    return 0
end
