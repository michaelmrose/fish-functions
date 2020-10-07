# Defined in /usr/home/michael/.config/fish/buffer/fuckingdbus.fish @ line 1
function fuckingdbus
    set dbusvals (dbus-launch|sd " " \n|choose -f = 1:)
    set -U DBUS_SESSION_BUS_ADDRESS $dbusvals[1]
    set -U DBUS_SESSION_BUS_PID $dbusvals[2]
end
