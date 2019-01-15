# Defined in /home/michael/.config/fish/buffer/change-dolphin-dir_change-dolp.fish @ line 13
function change-dolphin-to-autojump-target
	set target (autojump (rfi enter))
    change-dolphin-dir $target
end
