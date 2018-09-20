# Defined in /home/michael/.config/fish/buffer/monitor-nav-across-machines.fish @ line 16
function monitor-nav-across-machines-right
	set monitors HDMI-0 DVI-I-0 DP1 eDP1 
  set current (get-focused-display)
  switch $current
    case HDMI-0
      i3 focus output right
    case DVI-I-0
      switch-machines
      remote-i3 focus output DP1
    case DP1
      i3 focus output right
    case eDP1
      nil
  end
end
