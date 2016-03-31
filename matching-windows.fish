function matching-windows
	windows-list | grep -i $argv | cut -d ' ' -f1
end
