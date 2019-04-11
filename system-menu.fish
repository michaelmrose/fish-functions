# Defined in /home/michael/.config/fish/buffer/menu_system-menu.fish @ line 7
function system-menu
	
    switch (menu System: Lightsout Suspend Shutdown "Restart i3wm" Reboot "Switch User")
      
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
