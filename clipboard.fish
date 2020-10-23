# Defined in /usr/home/michael/.config/fish/buffer/clip_clipboard_clipboard-old.fish @ line 2
function clipboard
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
