# Defined in /home/michael/.config/fish/buffer/cleanup-desktop_lightsout_rboo.fish @ line 35
function sdown
	sudo umount -fl /mnt/michael
    cleanup-desktop
	  sudo shutdown -h now
end
