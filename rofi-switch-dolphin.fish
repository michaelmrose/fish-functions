function rofi-switch-dolphin
    dolphin-open-path (p (zoxide query -l (rofi -dmenu))| rofi -dmenu)
end
