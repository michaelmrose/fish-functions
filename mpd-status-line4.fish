# Defined in /home/michael/.config/fish/buffer/mpd-status-line4.fish @ line 2
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
        set tail via (mpd-list-enabled-outputs) at(getvolume)
        if exists $argv #we have a max size to respect
            if test (echo $current |wc -c) -gt $argv
                set current (echo $current | choose -f ' - ' 1)
                if test (echo $current |wc -c) -gt $argv
                    set current (truncate $argv right $current) 
                end
                
            end
        end
        echo $symbol $current $tail
        
            


    else
        output-status-line
        return 0
    end
end
