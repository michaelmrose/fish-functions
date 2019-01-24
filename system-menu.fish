# Defined in /home/michael/.config/fish/buffer/system-menu.fish @ line 2
function system-menu
	switch (p Suspend Shutdown Switch Reboot | rofi -dmenu -i -p System:)
        case Suspend
            echo suspending
        case Shutdown
            echo shutting down
        case Reboot
            echo rebooting
        case Switch
            dm-tool switch-to-greeter
        end
end
