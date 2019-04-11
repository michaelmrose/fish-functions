# Defined in /home/michael/.config/fish/buffer/cleanup-desktop.fish @ line 2
function cleanup-desktop
	sudo umount -fl /mnt/michael
	  kill (pgrep emacs)
    kill (pgrep zeal)
    sleep 1
    rm /tmp/ZealLocalServer
    sleep 1
	  i3-msg [class="."] kill
    countdown 7
end
