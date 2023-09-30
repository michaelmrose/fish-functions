function tdown
        set info (prompt 'title @ duration')
        if not exists $info
                last-timer
                return 0
        end
        set title  (echo $info | cut -d @ -f1| trim)
        set duration (echo $info | cut -d @ -f2 | trim)
        mkdir -p /tmp/timerslist
        if test -f (quote $title)
            rm /tmp/timerslist/$(quote $title)
        end
        eval kitty -o font_size=100 -e termdown --no-figlet -v en-us -T (quote $title) -o /tmp/timerslist/(quote $title) $duration
        if [ $status = 0 ]
            echo $title completed at (date) > /tmp/timers-complete.txt
        end
end
