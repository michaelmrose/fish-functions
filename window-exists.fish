# Defined in /home/michael/.config/fish/buffer/measure-app-startup_window-exi.fish @ line 17
function window-exists
    wmctl -lxp | awk '{print $4}' |g  $argv[1]
end
