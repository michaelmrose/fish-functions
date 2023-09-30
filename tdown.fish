function tdown
        set info (prompt 'title @ duration')
        set title  (echo $info | cut -d @ -f1| trim)
        set duration (echo $info | cut -d @ -f2 | trim)
        mkdir -p /tmp/timerslist
        eval kitty  --class timer -o font_size=100 -e termdown --no-figlet -v en-us -T "$title" $duration -o /tmp/timerslist/"$title"
        mpv --loop-file=inf ~/sounds/alarm.mp3
        if [ $status = 0 ]
            echo "$title" completed at (date) > /tmp/timers-complete.txt
        end
end
