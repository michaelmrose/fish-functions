# Defined in /home/michael/.config/fish/buffer/system-menu.fish @ line 2
function system-menu
	switch (p Lightsout Suspend Shutdown Switch Reboot | rofi -dmenu -i -p System:)
        case Lightsout
            lightsout
        case Suspend
            msg suspending
      case Shutdown
          msg shutting down
      case Reboot
          msg rebooting
      case Switch
            dm-tool switch-to-greeter
        end
end
