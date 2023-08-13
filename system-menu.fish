function system-menu
    switch (menu System " Lock" "􀆴  Lightsout" " Logout" "⏾ Suspend" "⏻ Shutdown" " Restart i3wm" "⏻ Reboot" " Switch User")
                case " Lock"
                        # dm-tool switch-to-greeter &
                        betterlockscreen -l
                case "􀆴  Lightsout"
                    echo lightsout
                        sleep 0.5
                        xset dpms force standby;betterlockscreen -l;xset -dpms
                case "⏾ Suspend"
                        sudo zzz
                case " Logout"
                        cleanup-desktop
                        i3 exit

                case "⏻ Shutdown"
                        cleanup-desktop
                        sudo shutdown -h now
                case " Restart i3wm"
                        restart-i3
                case "⏻ Reboot"
                        cleanup-desktop
                        sudo shutdown -r now
                case " Switch User"
                        dm-tool switch-to-greeter
        end
end
