function get-filename
	echo (cutlast "/" $argv) | cut -d "." -f1
end
