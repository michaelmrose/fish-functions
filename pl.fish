# Defined in /usr/home/michael/.config/fish/buffer/pl.fish @ line 2
function pl
    if exists $argv
        if string match $argv recent
            select (cat ~/playlists/recent.m3u)|all o
            return 0
        else
            set selection $argv
        end
    else
        set selection ''
    end
    
    set playlists (p ~/playlists/mpv/*.m3u)
    set choice (p $playlists|g $selection|each cutlast /|cut -d . -f1|select)
    if exists $choice
        set playlist (p $playlists | g $choice)
        if exists $playlist
                mpv $playlist &
        end
    else
        echo aborted
    end
end
