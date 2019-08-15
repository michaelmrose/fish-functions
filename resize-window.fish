# Defined in /home/michael/.config/fish/buffer/floating_term_focus_focus-dist.fish @ line 95
function resize-window
	set dim $argv[1]
    set num (abs $argv[2])
    if test $argv[2] -gt 0
        set direction grow
    else
        set direction shrink
    end
    i3 resize $direction $dim {$num}px or {$num}pc
end
