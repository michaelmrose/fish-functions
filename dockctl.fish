# Defined in /home/michael/.config/fish/buffer/dockctl.fish @ line 2
function dockctl
	if not exists $argv
    dockctl toggle
    exit 0
  end
    
	switch $argv
    case toggle
      if docked
        dockctl undock
      else
        dockctl dock
      end
    case dock
        # set -U wallpaperroot /med/images/backgrounds
        # # sudo ip link set dev wlp2s0 down
        # sleep 1
        # sudo mount /mnt/michael
        # xrandr --output DP1 --auto --output eDP1 --auto --right-of DP1 --set "scaling mode" "Full aspect" --scale 0.75x0.75
        # ssh desktop synergyc (ipaddr)
        # ssh desktop synergyc 192.168.1.141 &
        # ssh desktop synergyc 192.168.0.4 &
        # ssh desktop xrr dual
        # wp recall
        setup-keyboard
        xrr triple
        sleep 1
        fix-touchscreen
      case undock
          ssh desktop xrr triple
          i3 restart
          # sudo umount /mnt/michael
          # set -U wallpaperroot /home/michael/backgrounds
          # sudo ip link set dev wlp2s0 up
          # ssh desktop xrr dual
          # xrandr --output DP1 --off --output eDP1 --auto --set "scaling mode" "Full aspect" --scale 0.75x0.75
          # ssh desktop killall synergyc
  end
  #   setup-keyboard
  # for i in (xinput list | gr wacom |nth 10|cut -d = -f2)   
  #       xinput map-to-output $i eDP1 2> /dev/null
  #   end
end
