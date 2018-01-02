# Defined in /home/michael/.config/fish/buffer/wakeup.fish @ line 1
function wakeup
	i3lock -i /tmp/bgimage.png
  sudo mount /mnt/michael
  xrandr --output DP1 --auto --output eDP1 --auto --right-of DP1 --set "scaling mode" "Full aspect" --scale 0.75x0.75
  sudo rmmod wacom
  sleep 1
  sudo modprobe wacom
  sleep 1
  setup-keyboard
end
