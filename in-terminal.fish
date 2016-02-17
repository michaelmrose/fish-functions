function in-terminal
	pstree -s %self | grep $TERMINAL > /dev/null
end
