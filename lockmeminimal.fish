# Defined in /home/michael/.config/fish/buffer/floating_term_focus_focus-dist.fish @ line 64
function lockmeminimal
	save-workspaces
    for i in (get-connected-displays)
        i3 focus output $i
        i3 workspace {$i}_is_locked
    end
    i3 bar mode invisible
    set -U locked true
    xdotool key XF86LaunchA
end
