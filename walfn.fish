function walfn

	if test (count $bgimage) -gt 1
		montage $bgimage[1] $bgimage[2] -geometry +0+0 /tmp/montage.jpg
		set target /tmp/montage.jpg
	else
		set target $bgimage
	end

	wal -n --saturate 0.7 -i $target

	if exists $argv
		set accent $argv[1]
		set fg $argv[2]
		set bg $argv[3]
	else
		set accent (jq -r .colors.color3 ~/.cache/wal/colors.json)
		set oldaccent $accent
		set accent \#(darkerhex $accent)
		if test (compute-brightness $accent) -gt 110
			# sd $accent \#(darkerhex $accent) ~/.cache/wal/colors.json
			msg using darkened accent
			sd $oldaccent \#$accent ~/.cache/wal/colors.json
		end
		set fg (jq -r .colors.color0 ~/.cache/wal/colors.json)
		set bg (jq -r .colors.color15 ~/.cache/wal/colors.json)
		set stat (jq -r .colors.color0 ~/.cache/wal/colors.json)
	end

	# wali3status-rs $accent $stat
	# replace-color-in-i3 $accent
	# replace-color-in-i3 $accent
	# colorize-emacs $accent $fg $bg
	# fix rofi config
	sd '(.*selected-normal-background: ).*;' "\$1 $accent;" ~/.config/rofi/themes/october.rasi
    xrdb ~/.cache/wal/colors-i3.conf
	restart-i3
	sleep 1
	# pywalfox update
	pywalzathura
	cp ~/.cache/wal/firefox.css $FIREFOX_PROFILE_DIR/firefox.css
end
