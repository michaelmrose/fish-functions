# Defined in /usr/home/michael/.config/fish/buffer/fish_right_prompt.fish @ line 2
function fish_right_prompt
    if set n (count (jobs))
	echo \($n\) (cmd-duration)
    else
	cmd-duration
    end
end
