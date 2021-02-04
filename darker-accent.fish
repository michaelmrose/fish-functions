# Defined in /usr/home/michael/.config/fish/buffer/darker-accent.fish @ line 2
function darker-accent
		set accent (jq -r .colors.color3 ~/.cache/wal/colors.json)
		sd $accent \#(darkerhex "#9ec5ed") ~/.cache/wal/colors.json
		walfnadd
end
