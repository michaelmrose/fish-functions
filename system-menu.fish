# Defined in /usr/home/michael/.config/fish/buffer/system-menu.fish @ line 2
function system-menu
		switch (menu System: Lightsout Logout Suspend Shutdown "Restart i3wm" Reboot "Switch User")
				case Lock
						dm-tool switch-to-greeter
						sleep 0.5
						xset dpms force off
				case Lightsout
						sleep 0.5
						xset dpms force off
				case Suspend
						sudo zzz
				case Logout
						cleanup-desktop
						i3 exit

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
