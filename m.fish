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
        if test -f $argv && string match --regex 'video/.*$' (file --mime-type $argv)
            echo (fullpath $argv) > ~/playlists/recent.m3u
        end
    end
    mpv $argv &
end
