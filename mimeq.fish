function mimeq
	echo (gvfs-mime --query (mimet $argv))[1] | cut -d ":" -f2 | cut -d "." -f1 | trim
end
