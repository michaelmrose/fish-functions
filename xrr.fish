# Defined in /home/michael/.config/fish/buffer/game_runp2_xrr.fish @ line 28
function xrr
	switch $argv[1]
      case laptop
          xrandr --output eDP1 --auto --set "scaling mode" "Full aspect" --scale 0.75x0.75 --output DP1 --off
      case desktop
          xrandr --output eDP1 --off --output DP1 --auto
      case double
          xrandr --output eDP1 --auto --set "scaling mode" "Full aspect" --scale 0.75x0.75 --output DP1 --auto --right-of eDP1

  end
  wp recall
end
