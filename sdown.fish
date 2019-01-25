# Defined in /home/michael/.config/fish/buffer/rb_rboot_sdown.fish @ line 16
function sdown
	sudo umount -fl /mnt/michael
    cleanup-desktop
	  sudo shutdown -h now
end
