# Defined in /usr/home/michael/.config/fish/buffer/walfn_walfnadd.fish @ line 34
function walfnadd
		set accent (jq -r .colors.color3 ~/.cache/wal/colors.json)
		set fg (jq -r .colors.color0 ~/.cache/wal/colors.json)
		set bg (jq -r .colors.color15 ~/.cache/wal/colors.json)
		set stat (jq -r .colors.color0 ~/.cache/wal/colors.json)
		wali3status-rs $accent $stat
		replace-color-in-i3 $accent
		inject-rounded
		replace-color-in-i3 $accent
		colorize-emacs $accent $fg $bg
		restart-i3
		sleep 1
		pywalfox update
		pywalzathura
end
