# Defined in /home/michael/.config/fish/buffer/view.fish @ line 1
function view
	while read -l line
        set images $images $line
    end
    sxiv -tbfor $images
end
