function start-quietly
	set com \'$argv '2>' ''/dev/null\'
    eval bash -c $com
end
