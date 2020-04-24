# Defined in /home/michael/.config/fish/buffer/mpd-album-cover.fish @ line 1
function mpd-album-cover
    echo \"(containing-dir $MUSIC_DIR/(mpc current -f %file%))/cover.*\"
end
