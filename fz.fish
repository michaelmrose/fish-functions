function fz
	fzf -1 -q "$argv" | pipetest | openpipe
end
