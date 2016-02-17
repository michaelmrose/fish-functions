function clipboard
	if exists $argv
        eval $argv | clipboard
    else
        xclip -selection clipboard -i
    end
end
