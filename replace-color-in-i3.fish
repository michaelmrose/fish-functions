# Defined in /home/michael/.config/fish/buffer/replace-color-in-i3.fish @ line 2
function replace-color-in-i3
    sd -i "focused_workspace  #[a-fA-F0-9]{6} #[a-fA-F0-9]{6} #[a-fA-F0-9]{6}" "focused_workspace  #111111 #$argv #000000" ~/.config/i3/config
end
