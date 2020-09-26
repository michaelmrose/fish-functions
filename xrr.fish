# Defined in /usr/home/michael/.config/fish/buffer/xrr.fish @ line 2
function xrr
    switch $argv[1]
        case single
            xrrlist HDMI-0
        case left
           # add argv[2] to existing layout on left side
           xrr $argv[2] $ENABLED_DISPLAYS
        case right
           # add argv[2] to existing layout on right side
           xrr $ENABLED_DISPLAYS $argv[2]
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
