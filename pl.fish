# Defined in /home/michael/.config/fish/buffer/pl.fish @ line 2
function pl
    if exists $argv
        if test -f ~/playlists/mpv/$argv
            mpv ~/playlists/mpv/$argv
        end
    end
    set playlists (p ~/playlists/mpv/*.m3u)
    set choice (p $playlists|each cutlast /|cut -d . -f1|select)
    echo p is $playlists c is $choice
    echo $choice
end
