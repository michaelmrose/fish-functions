# Defined in /usr/home/michael/.config/fish/buffer/emd.fish @ line 2
function emd
    # set dbusvals (dbus-launch|sd " " |choose -f = 1:)
    # set -x DBUS_SESSION_BUS_ADDRESS $dbusvals[1]
    # set -x DBUS_SESSION_BUS_PID $dbusvals[2]
	  env (dbus-launch) emacs --daemon
end
