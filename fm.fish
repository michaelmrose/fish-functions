# Defined in /home/michael/.config/fish/buffer/fm.fish @ line 2
function fm
	if not exists $argv
      dolphin (pwd)
  else
      dolphin $argv
  end
end
