# Defined in /home/michael/.config/fish/buffer/albumfetch.fish @ line 2
function albumfetch
    while true;
        mpc idleloop player|albumart
    end
end
