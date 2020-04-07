# Defined in /home/michael/.config/fish/buffer/ws.fish @ line 2
function ws
    i3-msg workspace (decorate-workspacename $argv)
end
