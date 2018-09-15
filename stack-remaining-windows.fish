# Defined in /home/michael/.config/fish/buffer/stack-remaining-windows.fish @ line 1
function stack-remaining-windows
	i3 focus parent
    i3 focus parent
    i3 focus parent
    i3 layout stacked
    i3 focus child
    i3 move window left
end
