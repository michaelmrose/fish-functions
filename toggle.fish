function toggle
    if up? $argv
        stop $argv
    else
        start $argv
    end
end
