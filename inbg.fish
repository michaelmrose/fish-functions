function inbg
	ff $argv &
    bg %(echo (jobs)[-1] | cut -f1)
end
