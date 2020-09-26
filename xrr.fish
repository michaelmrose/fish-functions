# Defined in /usr/home/michael/.config/fish/buffer/xrr.fish @ line 2
function xrr
	switch $argv[1]
        case single
          xrandr --output HDMI-0 --auto --output DVI-D-0 --off --output DP-5 --off
        case triple
            xrandr --output DP-5 --auto --output HDMI-0 --auto --left-of DP-5 --output DVI-D-0 --auto --left-of HDMI-0
  end
  wp recall
end
