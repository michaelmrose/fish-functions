# Defined in /usr/home/michael/.config/fish/buffer/m.fish @ line 32
function save-list-of-files-to-playlist
        set name (prompt 'name?')
        if exists $name
            for file in $argv
                set files $files (fullpath $file|stripquotes)
            end
            
            p $files > ~/playlists/mpv/$name.m3u
        end
end
