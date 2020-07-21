# Defined in /home/michael/.config/fish/buffer/typewriter-notification.fish @ line 2
function typewriter-notification
    for i in (seq 1 (count $msg))
        ms $argv[1..$i]
        sleep 0.2
    end
end
