# Defined in /home/michael/.config/fish/buffer/rb_rboot_sdown.fish @ line 2
function rb
	sudo umount -fl /mnt/michael
    cleanup-desktop
	  sudo shutdown -r now
end
