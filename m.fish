# Defined in /usr/home/michael/.config/fish/buffer/is-a-video?_m.fish @ line 7
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
        if is-a-video? $argv
            echo (fullpath $argv) >> ~/playlists/mpv/recent.m3u
        end
    end
    mpv $argv &
end
