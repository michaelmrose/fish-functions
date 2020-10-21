# Defined in /usr/home/michael/.config/fish/buffer/m.fish @ line 2
function m
    # if we have more than one entry we are going to prompt for a name for the playlist to revisit later and
    # save the playlist if we deign to give it a name
    if test (count $argv) -gt 1
        set name (prompt 'name?')
        if exists $name
            for file in $argv
                set files $files (fullpath $file|stripquotes)
            end
            
            p $files > ~/playlists/mpv/$name.m3u
        end
    else
        # if we only have one entry  and it happens to be a video we are going save it to a recent playlist
        # which will be listed in order of recency with duplicates remove and no more than 30 entries saved
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
    mpv $argv &
end
