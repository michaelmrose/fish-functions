# Defined in /home/michael/.config/fish/buffer/dockctl.fish @ line 1
function dockctl
	switch $argv
    case dock
      sudo mount /mnt/michael
      xrandr --output DP1 --auto --output eDP1 --auto --right-of DP1 --set "scaling mode" "Full aspect" --scale 0.75x0.75

    case undock
      sudo umount /mnt/michael
      xrandr --output DP1 --off --output eDP1 --auto --set "scaling mode" "Full aspect" --scale 0.75x0.75
  end
  setup-keyboard
  for i in (seq 30)
    xinput map-to-output $i eDP1
  end
end
