function evalvi3op
	set com $vi3op $argv
    eval $com
    er vi3op
    update-op-status
end
