# Defined in /home/michael/.config/fish/buffer/daj.fish @ line 2
function daj
	for job in (jobs | choose 0)
    disown %$job
  end
end
