# Defined in /home/michael/.config/fish/buffer/albumfetch.fish @ line 1
function albumfetch
    while true;
        mpc idleloop player|albumart.sh
    end
end
