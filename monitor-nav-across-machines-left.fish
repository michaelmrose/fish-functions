# Defined in /home/michael/.config/fish/buffer/monitor-nav-across-machines_mo.fish @ line 14
function monitor-nav-across-machines-left
	set monitors HDMI-0 DVI-I-0 DP1 eDP1 
    set current (get-focused-display)
    switch $current
      case HDMI-0
        nil
      case DVI-I-0
        i3 focus output left
      case DP1
        switch-machines
        remote-i3 focus output DVI-I-0
      case eDP1
        i3 focus output left
    end
end
