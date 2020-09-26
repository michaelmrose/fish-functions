# Defined in /usr/home/michael/.config/fish/buffer/get-disconnected-displays.fish @ line 2
function get-disconnected-displays
    xrandr | grep ' connected' |grep -E --invert-match '[[:print:]]{3,7} [[:print:]]{9} [0-9]{3,4}'|choose 0
end
