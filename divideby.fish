# Defined in /home/michael/.config/fish/buffer/divideby.fish @ line 1
function divideby
	while read -l line
        math \\ $argv
    end
end
