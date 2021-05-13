# Defined in /usr/home/michael/.config/fish/buffer/replace-color-in-i3.fish @ line 2
function replace-color-in-i3
    sd  "focused_workspace  #[a-fA-F0-9]{6} #[a-fA-F0-9]{6} #[a-fA-F0-9]{6}" "focused_workspace  #111111 $argv #000000" ~/.config/i3/config
    sd  "client.focused_inactive.*" "client.focused_inactive  #111111 $argv $argv $argv" ~/.config/i3/config
    sd  " background: #.*" " active-background: $argv;" ~/.config/rofi/themes/colors-rofi-dark.rasi
end
