# Defined in /home/michael/.config/fish/buffer/docked.fish @ line 2
function docked
	# test (count (get-connected-displays)) -gt 1
  # lspci | gr dock > /dev/null

    lsusb gr OneLink > /dev/null
end
