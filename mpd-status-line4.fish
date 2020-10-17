# Defined in /usr/home/michael/.config/fish/buffer/mpd-status-line4.fish @ line 2
function mpd-status-line4
	  set mpd_info (mpc status)
    set mpdstatus (p $mpd_info |grep -E 'play|pause'|cut -d \[ -f2|cut -d \] -f1)
    if exists $mpdstatus
        set current (mpc status |head -1)
        switch $mpdstatus
            case paused
                set symbol  
            case playing
                set symbol 
        end
        set volume (getvolume)
        # if test (echo $volume |wc -c) -gt 3
        #     ms bigger
        #     set volume " $volume"
        # end
        # set tail via (mpd-list-enabled-outputs) at $volume
        set mpdout (mpc outputs|g enabled|choose 2|cut -d \( -f2|cut -d \) -f1|condense_lines)
        set tail via (output-type) at $volume mpd: $mpdout
        if exists $argv #we have a max size to respect
            set max $argv

            if test (echo $symbol $current $tail |wc -c) -gt $max
                set current (echo $current | choose -f ' - ' 1|condense_spaces)
                set tail (echo $tail | sd headphones )
                set tail (echo $tail | sd speakers )
                set tail (echo $tail|sd " at " " ")
                if test (echo $symbol $current $tail |wc -c) -gt $max
                    set current (truncate $max right $current) 
                end
                
            end
        end
        echo  $symbol $current $tail
        
            


    else
        output-status-line
        return 0
    end
end
