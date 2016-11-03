function parent-pid
	pstree -Ap %self | cut -d '(' -f2 | cut -d ')' -f1 | head -1
end
