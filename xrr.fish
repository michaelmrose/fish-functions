# Defined in /home/michael/.config/fish/buffer/xrr.fish @ line 2
function xrr
	switch $argv[1]
      case laptop
          xrandr --output eDP1 --auto --set "scaling mode" "Full aspect" --scale 0.75x0.75 --output DP1 --off
      case desktop
          xrandr --output eDP1 --off --output DP1 --auto
      case triple
          xrandr --output eDP1 --size 1920x1080 --output DP1 --size 1920x1080 --right-of eDP1

  end
  wp recall
end
