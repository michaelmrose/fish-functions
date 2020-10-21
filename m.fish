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
        if is-a-video? $argv
            set recent ~/playlists/mpv/recent.m3u
            echo (fullpath $argv|stripquotes) >> $recent
            # remove non adjacent duplicate entries and keep the last 30 entries
            awk '!visited[$0]++'  $recent
            sed -i '3,$ d' $recent
        end
    end
    mpv $argv &
end
