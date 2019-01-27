# Defined in /home/michael/.config/fish/buffer/system-menu.fish @ line 2
function system-menu
	switch (p Lightsout Suspend Shutdown "Restart i3wm" Reboot "Switch User"| rofi -dmenu -i -p System:)
        case Lightsout
            lightsout
        case Suspend
            sus
        case Shutdown
            sdown
        case "Restart i3wm"
            restart-i3
        case Reboot
            rboot
        case "Switch User"
            dm-tool switch-to-greeter
    end
end
