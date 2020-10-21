# Defined in /usr/home/michael/.config/fish/buffer/m.fish @ line 2
function m
    if test (count $argv) -gt 1
        set name (prompt 'name?')
        if exists $name
            for file in $argv
                set files $files (fullpath $file|stripquotes)
            end
            
            p $files > ~/playlists/mpv/$name.m3u
        end
    else
        echo duce!
    end
    mpv $argv &
end
