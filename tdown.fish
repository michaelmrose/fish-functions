function tdown
    if exists $argv
        set info $argv
    else
        set info (prompt 'title @ duration')
    end
    set title  (echo $info | cut -d @ -f1| trim)
    set duration (echo $info | cut -d @ -f2 | trim)
    mkdir -p /tmp/timerslist
    if not test -f ~/sounds/alarmvids/"$title".mp4
        ffmpeg -f lavfi -i color=c=black:s=1920x1080:d=5 -i ~/sounds/alarm.mp3 -vf "drawtext=fontfile=/usr/share/fonts/TTF/DejaVuSans-Bold.ttf:text=\'$title\':fontsize=100:fontcolor=white:x=(w-text_w)/2:y=(h-text_h)/2" -shortest ~/sounds/alarmvids/"$title".mp4
    end
    eval kitty  --class timer -o font_size=50 -e termdown -s --no-figlet -v en-us -T "$title" $duration -o /tmp/timerslist/"$title"

    if [ $status = 0 ]
        msg Times up! Time for $title
            echo "$title" completed at (date) > /tmp/timers-complete.txt
            mpv --force-window --loop-file=inf ~/sounds/alarmvids/"$title".mp4
    end



end
