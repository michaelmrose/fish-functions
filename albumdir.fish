# Defined in /home/michael/.config/fish/buffer/albumdir.fish @ line 1
function albumdir
    echo $MUSIC_DIR(mpc current -f %file%)|rev | cut -d / -f2-|rev
end
