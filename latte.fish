# Defined in /home/michael/.config/fish/buffer/latte.fish @ line 1
function latte
    if not pgrep latte
        latte-dock --layout Plasma --single &
    else
        killall latte-dock
        latte-dock --layout Plasma --single &
    end
end
