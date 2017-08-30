# Defined in /home/michael/.config/fish/buffer/bga_daj.fish @ line 8
function daj
	for job in (jobs | awk '{print $1}')
    disown %$job
  end
end
