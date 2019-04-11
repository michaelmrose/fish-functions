# Defined in /home/michael/.config/fish/buffer/lightsout_rboot_sdown_sus_syst.fish @ line 59
function system-menu
	switch (p Lightsout Suspend Shutdown "Restart i3wm" Reboot "Switch User"| rofi -dmenu -i -p System:)
        case Lightsout
	          sleep 0.5
            xset dpms force off
      case Suspend
          systemctl suspend;
      case Shutdown
            cleanup-desktop
	          sudo shutdown -h now
      case "Restart i3wm"
            restart-i3
        case Reboot
            cleanup-desktop
	          sudo shutdown -r now
        case "Switch User"
            dm-tool switch-to-greeter
    end
end
