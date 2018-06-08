# Defined in /home/michael/.config/fish/buffer/get-wacom-ids.fish @ line 1
function get-wacom-ids
	xinput list|gr wacom | cut -d = -f2 | cut -c1-2 | trim
end
