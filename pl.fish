# Defined in /home/michael/.config/fish/buffer/pick-playlist_pl.fish @ line 15
function pl
    if exists $argv
        set selection $argv
    else
        set selection ''
    end
    
    set playlists (p ~/playlists/mpv/*.m3u)
    set choice (p $playlists|g $selection|each cutlast /|cut -d . -f1|select)
    mpv (p $playlists | grep $choice) &
end
