# Defined in /usr/home/michael/.config/fish/buffer/clip_clipboard.fish @ line 10
function clipboard-old
	if exists $argv
        switch $argv
            case  'o'
                xclip  -selection clipboard -o
            case '*'
                eval $argv | clipboard
        end
    else
        xclip -selection clipboard -i
    end
end
