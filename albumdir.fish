# Defined in /home/michael/.config/fish/buffer/albumart_albumdir.fish @ line 6
function albumdir
    echo $MUSIC_DIR(mpc current -f %file%)|rev | cut -d / -f2-|rev
end
