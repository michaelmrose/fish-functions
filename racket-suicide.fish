# Defined in /home/michael/.config/fish/buffer/racket-suicide.fish @ line 2
function racket-suicide
    while true
        if meminfo --full /usr/sbin/racket|g Gib
            pgrep --full /usr/sbin/racket|each kill -9
        end
        sleep 1
    end
end
