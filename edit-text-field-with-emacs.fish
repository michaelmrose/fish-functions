# Defined in /home/michael/.config/fish/buffer/edit-text-field-with-emacs.fish @ line 1
function edit-text-field-with-emacs
    set tmp /tmp/(uid)-edit-text-field
    xdotool key Control+A
    xdotool key Control+C
    xclip -o -s clip > $tmp  
    emacsclient -c $tmp
    cat $tmp |clipboard
    rm $tmp
end
