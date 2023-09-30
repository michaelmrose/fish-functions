function tdown
        set info (prompt 'title @ duration')
        if not exists $info
                last-timer
                return 0
        end
        set title  (echo $info | cut -d @ -f1| trim)
        set duration (echo $info | cut -d @ -f2 | trim)
        mkdir -p /tmp/timerslist
        eval kitty -o font_size=100 -e termdown --no-figlet -v en-us -T (quote $title) $duration -o /tmp/timerlist/$title
        if [ $status = 0 ]
            echo $title completed at (date) > /tmp/timers-complete.txt
        end
end
