# Defined in /home/michael/.config/fish/buffer/lightsout_rboot_sdown_sus_syst.fish @ line 23
function sdown
	sudo umount -fl /mnt/michael
    cleanup-desktop
	  sudo shutdown -h now
end
