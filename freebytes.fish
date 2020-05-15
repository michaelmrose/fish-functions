# Defined in /home/michael/.config/fish/buffer/freebytes.fish @ line 1
function freebytes
free -b|grep Mem|nth 3|each human
end
