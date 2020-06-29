# Defined in /home/michael/.config/fish/buffer/freebytes.fish @ line 2
function freebytes
free -h --si|g mem|choose 6
end
