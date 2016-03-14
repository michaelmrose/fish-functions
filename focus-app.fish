function focus-app
	set currentclass (winclass)
    set command (appkey $argv)
    set targetclass (return-windowclass $command)
    if match $currentclass $targetclass
        nextwindow
        msg next
    else
        set -U lasttarget $class
        if focus class (tolower $class)
        else
            focus $command
        end
    end
    er vi3op
    update-op-status
end
