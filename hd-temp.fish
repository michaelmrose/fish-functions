# Defined in /home/michael/.config/fish/buffer/hd-temp.fish @ line 1
function hd-temp
	explode-words (s hddtemp /dev/$argv | condense_spaces ) | gr '°' | head -1
end
