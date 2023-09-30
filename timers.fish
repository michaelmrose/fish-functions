function timers
    echo -n "⏰ "
    for timer in /tmp/timerslist/*
        echo ⏺  (basename $timer):(sed -n 1p $timer)
    end|condense_lines|string pad -w 20




end
