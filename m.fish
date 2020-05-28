# Defined in /home/michael/.config/fish/buffer/m.fish @ line 2
function m
    if test (count $argv) -gt 1
        set name (prompt 'name?')
        if exists $name
            p $argv > ~/playlists/mpv/$name.m3u
        end
    end
    mpv $argv &
end
