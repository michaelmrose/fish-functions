function timers
    echo -n ⏱
    for timer in /tmp/timerslist/*
        echo  (basename $timer):(cat $timer|head -1)
    end|condense_lines



end
