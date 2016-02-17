function editclipboard
	set file /tmp/fcc.js
  xclip -o > $file
  eval lilyterm -e nvim $file
end
