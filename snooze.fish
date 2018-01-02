# Defined in /home/michael/.config/fish/buffer/wakeup.fish @ line 12
function snooze
	sudo unmount /mnt/michael
  xrandr --output DP1 --off --output eDP1 --auto --set "scaling mode" "Full aspect" --scale 0.75x0.75
  for i in (seq 30)
    xinput map-to-output $i eDP1
  end
end
