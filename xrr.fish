# Defined in /usr/home/michael/.config/fish/buffer/xrr.fish @ line 2
function xrr
    switch $argv[1]
        case single
            xrrlist HDMI-0
        case left
           # add argv[2] to existing layout on left side
           set com $LASTXRR --output --auto --left-of $ENABLED_DISPLAYS[1]
           eval $com
        case right
           # add argv[2] to existing layout on right side
           set com $LASTXRR --output --auto --right-of $ENABLED_DISPLAYS[-1]
           eval $com
        case triple
            xrrlist DVI-D-0 HDMI-0 DP-5
        case toggle
            if test (count (get-connected-displays)) -gt 1
                xrr single
            else
                xrr triple
            end
            
        case '*'
            xrrlist $argv
    end
    
    wp recall
    restart picom
end
