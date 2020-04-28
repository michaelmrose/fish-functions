# Defined in /home/michael/.config/fish/buffer/rofi-in-ws.fish @ line 1
function rofi-in-ws
    i3-msg workspace rofi;rofi $argv -m -1;i3-msg workspace back_and_forth
end
