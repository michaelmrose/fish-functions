# Defined in /home/michael/.config/fish/buffer/change-dolphin-dir_change-dolp.fish @ line 13
function change-dolphin-to-autojump-target
	set target (autojump (rfi enter))
  if test string length $target -gt 1
      change-dolphin-dir $target
  else
      msg no target
  end
end
