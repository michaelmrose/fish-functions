# Defined in /home/michael/.config/fish/buffer/pl.fish @ line 15
function pick-playlist
    if exists $argv
        set selection $argv
    else
        set selection ''
    end
    
    set playlists (p ~/playlists/mpv/*.m3u)
    set choice (p $playlists|g $selection|each cutlast /|cut -d . -f1|select)
    echo (p $playlists | grep $choice)
end
