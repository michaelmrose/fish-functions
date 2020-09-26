# Defined in /usr/home/michael/.config/fish/buffer/xrr.fish @ line 2
function xrr
    if exists $argv
        switch $argv[1]
            case single
                xrrlist HDMI-0
            case triple
            xrrlist DVI-D-0 HDMI-0 DP-5
            case '*'
                xrrlist $argv
        end
    else
        xrrswap

    end
    
  wp recall
end
