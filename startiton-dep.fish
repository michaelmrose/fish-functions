# Defined in /home/michael/.config/fish/buffer/floating_term_focus_focus-dist.fish @ line 133
function startiton-dep
	set workspacelist (odds $argv)
    set applist (evens $argv)
    echo printing ws
    println $workspacelist
    echo printing apps
    println $applist
    save-workspaces
    # set workspaces (get-active-workspaces | stripnumbers)
    # set activeWorkspace (get-focused-workspace)

    for i in (range (count $workspacelist))
        set layout /tmp/(echo (uid)-layout)
        set workspace $workspacelist[$i]
        set app $applist[$i]
        set winclass (return-windowclass $app)
        echo w is $winclass and a is $app
        cat ~/scripts/test.json | sed "s/#winclass/$winclass/g" > $layout
        ws $workspace
        i3 append_layout $layout
        fish -c "$app &"
        rm $layout
    end
    restore-workspaces
    nothing-urgent
    # ws $workspaces $activeWorkspace
    
    # sleep 3
    # fix-all-trans
    # hide-all-hidden-windows
end
