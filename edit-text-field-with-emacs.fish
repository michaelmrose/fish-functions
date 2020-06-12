# Defined in /home/michael/.config/fish/buffer/edit-text-field-with-emacs.fish @ line 2
function edit-text-field-with-emacs
    set tmp /tmp/(uid)-edit-text-field
    sleep 0.1
    xdotool key Control+a
    xdotool key Control+c
    xclip -o -s clip > $tmp  
    emacsclient +4000:4000 -c $tmp
    cat $tmp |clipboard
    rm $tmp
    sleep 0.1
    xdotool key Control+v
end
