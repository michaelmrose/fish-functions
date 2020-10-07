# Defined in /usr/home/michael/.config/fish/functions/fuckingdbus.fish @ line 2
function fuckingdbus
    set dbusvals (dbus-launch|sd " " \n|choose -f = 1:)
    set -Ux DBUS_SESSION_BUS_ADDRESS $dbusvals[1]
    set -Ux DBUS_SESSION_BUS_PID $dbusvals[2]
end
