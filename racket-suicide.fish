# Defined in /home/michael/.config/fish/buffer/racket-suicide.fish @ line 1
function racket-suicide
    while true
        if meminfo --full /usr/sbin/racket|g Gib
            echo true
        end
        sleep 1
    end
end
