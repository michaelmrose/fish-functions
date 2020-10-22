# Defined in /usr/home/michael/.config/fish/buffer/m.fish @ line 43
function add-file-to-recent-playlist
        if is-a-video? $argv
            set recent ~/playlists/recent.m3u
            set new ~/playlists/new.m3u
            echo (fullpath $argv|stripquotes) >> $new
            cat $recent >> $new
            # remove non adjacent duplicate entries and keep the last 30 entries
            awk '!visited[$0]++'  $new
            sed -i '31,$ d' $new
            mv $new $recent
        end
end
