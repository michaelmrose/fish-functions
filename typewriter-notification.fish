# Defined in /home/michael/.config/fish/buffer/typewriter-notification.fish @ line 1
function typewriter-notification
    for i in (seq 1 (count $msg))
        ms $msg[1..$argv]
        sleep 0.2
    end
end
