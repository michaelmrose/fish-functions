function vi3_change-all-workspaces
	set numdisplays (get-number-of-displays)
    eval vi3_take-{$numdisplays} $argv[1] vi3_change-all
end
