# Defined in /home/michael/.config/fish/buffer/cleanup-desktop_lightsout_rboo.fish @ line 28
function rboot
	sudo umount -fl /mnt/michael
    cleanup-desktop
	  sudo shutdown -r now
end
