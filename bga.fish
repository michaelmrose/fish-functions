# Defined in /home/michael/.config/fish/buffer/bga_daj.fish @ line 2
function bga
	for job in (jobs | awk '{print $1}')
    bg %$job
  end
end
