# Defined in /home/michael/.config/fish/buffer/albumdir_removealbumart_saveal.fish @ line 2
function albumdir
    echo $MUSIC_DIR(mpc current -f %file%)|rev | cut -d / -f2-|rev
end
