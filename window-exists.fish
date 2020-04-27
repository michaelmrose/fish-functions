# Defined in /home/michael/.config/fish/buffer/measure-app-startup.fish @ line 6
function window-exists
    wmctl -lxp | awk '{print $4}' |g  $argv[1]
end
