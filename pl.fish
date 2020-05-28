# Defined in /home/michael/.config/fish/buffer/pl.fish @ line 2
function pl
    if exists $argv
        if test -f ~/playlists/mpv/$argv
            set playlist ~/playlists/mpv/$argv
        end
    end

    set playlists (p ~/playlists/mpv/*.m3u)
    set choice (p $playlists|each cutlast /|cut -d . -f1|select)
    set playlist (p $playlists | grep $choice)
    echo $playlist
end
