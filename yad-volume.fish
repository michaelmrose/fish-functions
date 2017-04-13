function yad-volume
	yad --text="Volume" --text-align center --scale --value (getvolume) --geometry=10x300 --vertical --button next --print-partial --no-close --step 5 --max-value 130 | while read -l line;setvolume $line;end
end
