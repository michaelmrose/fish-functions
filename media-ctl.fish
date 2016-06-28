function media-ctl
	set nargs (count $argv)
    set xs (padded $argv)
    switch $argv[1]
        case play
            if [ $nargs = 1 ]
                playerctl --player=$PLAYER play-pause
            else
                #add results matching query to current playlist
                play-music $argv[2..-1]
            end

        case clear
            clear-playlist
        case vol
            setvolume $argv[2]
        case mute
            toggle-mute
        case playing
            #print title of playing track
            playing
        case lyrics
            #print lyrics of playing tracks
            lyrics (media-ctl playing)
        case outputs
            list-outputs
        case output
            switch-output
        case status
            playerctl status
        case displays
            list-displays
        case read
            books $xs[2..-1]
        case watch
            watch-video $argv[2..-1]
        case "*"
            #handles play pause stop next previous
            playerctl --player=$PLAYER $argv
        end
end
