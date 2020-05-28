# Defined in /home/michael/.config/fish/buffer/pl.fish @ line 1
function pl
    if exists $argv
        if test -f ~/playlists/mpv/$argv
            mpv ~/playlists/mpv/$argv
        end
    end
end
