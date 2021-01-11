# Defined in /usr/home/michael/.config/fish/buffer/hide.fish @ line 1
function hide
	while read -l line
			echo $line | grep --invert-match $argv
	end
end
