# Defined in /usr/home/michael/.config/fish/buffer/georgia-diff.fish @ line 2
function georgia-diff
    set gnew (georgia)
    set gold $gnew
    while true
        set gnew (georgia)
        if test ($gnew -gt $gold)
            set gold $gnew
            msg it changed margin is now $gnew
        else
            echo still $gnew
        end
        sleep 60
    end
end
