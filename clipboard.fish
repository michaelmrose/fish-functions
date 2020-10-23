# Defined in /usr/home/michael/.config/fish/buffer/clipboard.fish @ line 2
function clipboard
	if exists $argv
        switch $arg
            case  "-o"
                xclip -o -selection clipboard
            case '*'
                eval $argv | clipboard
        end
    else
        xclip -selection clipboard -i
    end
end
