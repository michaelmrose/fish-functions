function replace-color-in-i3
    sd  'focused_workspace.*' "focused_workspace  #111111 $argv #000000" ~/.config/i3/config
    sd  "client.focused_inactive.*" "client.focused_inactive  #111111 $argv $argv $argv" ~/.config/i3/config
    sd  " selected-normal-background: #.*" " selected-normal-background: $argv;" ~/.config/rofi/themes/colors-rofi-dark.rasi
end
