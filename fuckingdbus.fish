# Defined in /usr/home/michael/.config/fish/buffer/emd_fuckingdbus.fish @ line 10
function fuckingdbus
    set dbusvals (dbus-launch|sd " " |choose -f = 1:)
    set -x DBUS_SESSION_BUS_ADDRESS $dbusvals[1]
    set -x DBUS_SESSION_BUS_PID $dbusvals[2]
end
