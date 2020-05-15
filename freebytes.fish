# Defined in /home/michael/.config/fish/buffer/freebytes.fish @ line 2
function freebytes
free -b|grep Mem|nth 4|each human
end
