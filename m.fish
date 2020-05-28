# Defined in /home/michael/.config/fish/buffer/m_pl.fish @ line 2
function m
    if test (count $argv) -gt 1
        set name (prompt 'name?')
        if exists $name
            for file in $argv
                set files $files \"$file\"
            end
            
            p $argv |each fullpath > ~/playlists/mpv/$name.m3u
        end
    end
    mpv $argv &
end
