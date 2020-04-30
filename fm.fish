# Defined in /home/michael/.config/fish/buffer/fm.fish @ line 2
function fm
	if not exists $argv
      spacefm (pwd)
  else
      spacefm $argv
  end
end
