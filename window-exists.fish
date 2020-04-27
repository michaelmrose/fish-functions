# Defined in /home/michael/.config/fish/buffer/measure-app-startup_window-exi.fish @ line 24
function window-exists
    wmctrl -lxp | awk '{print $4}' |g  $argv[1] > /dev/null
end
