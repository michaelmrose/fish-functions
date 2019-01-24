# Defined in /home/michael/.config/fish/buffer/yad-volume.fish @ line 2
function yad-volume
	yad --text="Volume" --text-align center --scale --value (getvolume) --geometry=10x300 --vertical --button done --print-partial --no-close --step 5 --max-value 130 | while read -l line;vol $line;end
end
