function xrrold
    switch $argv[1]
        case single
            xrr HDMI-0
        case left
           # add argv[2] to existing layout on left side
           if test (count $argv) -gt 1
               xrr $argv[2] $ENABLED_DISPLAYS
           else
               xrr (get-disconnected-displays) $ENABLED_DISPLAYS
           end
           
        case right
           # add argv[2] to existing layout on right side
           if test (count $argv) -gt 1
               xrr $ENABLED_DISPLAYS $argv[2]
           else
               xrr $ENABLED_DISPLAYS (get-disconnected-displays) 
           end
           

        case triple
            xrr DVI-D-0 HDMI-0 DP-5
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
		killall picom
		picom &
end
