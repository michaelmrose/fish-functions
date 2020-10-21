# Defined in /usr/home/michael/.config/fish/buffer/pl.fish @ line 2
function pl
    if exists $argv
        set selection $argv
    else
        set selection ''
    end
    
    set playlists (p ~/playlists/mpv/*.m3u)
    set choice (p $playlists|g $selection|each cutlast /|cut -d . -f1|select)
    if exists $choice
        set playlist (p $playlists | g $choice)
        if exists $playlist
            if [ $playlist = recent ]
                select (cat ~/playlists/mpv/recent.m3u)|all o
            else
                mpv $playlist &
            end
        end
    else
        echo aborted
    end
end
