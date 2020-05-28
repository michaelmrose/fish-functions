# Defined in /home/michael/.config/fish/buffer/m_pl.fish @ line 17
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
            mpv $playlist &
        end
    else
        echo aborted
    end
end
