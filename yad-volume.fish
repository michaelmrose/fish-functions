# Defined in /home/michael/.config/fish/buffer/yad-volume.fish @ line 2
function yad-volume
	yad --text="Volume" --text-align center --scale --value (ponymix get-volume) --geometry=10x300 --vertical --button done --print-partial --no-close --step 10 --max-value 130 | while read -l line;ponymix set-volume $line;end;and vol set-volume (ponymix get-volume)
end
