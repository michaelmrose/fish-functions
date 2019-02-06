# Defined in /home/michael/.config/fish/buffer/quoteline.fish @ line 1
function quoteline
	while read -l line
        echo \"$line\"

    end
end
