function timers
    if exists /tmp/timerslist/*
        echo -n "⏰ "
        for timer in /tmp/timerslist/*
            echo ⏺  (basename $timer):(sed -n 1p $timer)|string pad -w 20
        end|condense_lines
    end




end
