# Defined in /home/michael/.config/fish/buffer/floating_term_focus_focus-dist.fish @ line 166
function unlockmeminimal
	if [ $locked = "false" ]
        return 0
    else
        restore-workspaces
        i3 bar mode dock
        set -U locked false
    end
end
