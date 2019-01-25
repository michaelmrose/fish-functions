# Defined in /home/michael/.config/fish/buffer/system-menu.fish @ line 2
function system-menu
	switch (p Lightsout Suspend Shutdown "Switch User" Reboot | rofi -dmenu -i -p System:)
        case Lightsout
            lightsout
        case Suspend
            sus
        case Shutdown
            sdown
        case Reboot
            rboot
        case "Switch User"
            dm-tool switch-to-greeter
    end
end
