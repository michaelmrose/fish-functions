# Defined in /home/michael/.config/fish/buffer/get-wacom-ids.fish @ line 2
function get-wacom-ids
	xinput list|gr wacom | gr finger| cut -d = -f2 | cut -c1-2 | trim
end
