function lockmeminimal
	save-workspaces
    for i in (get-connected-displays)
        im focus output $i
        im workspace {$i}_is_locked
    end
    im bar mode invisible
    set -U locked true
    xdotool key XF86LaunchA
end
