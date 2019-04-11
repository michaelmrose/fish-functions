# Defined in /home/michael/.config/fish/buffer/lightsout_rboot_sdown_sus_syst.fish @ line 16
function rboot
	sudo umount -fl /mnt/michael
    cleanup-desktop
	  sudo shutdown -r now
end
