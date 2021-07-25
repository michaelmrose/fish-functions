# Defined in /usr/home/michael/.config/fish/functions/darker-accent.fish @ line 2
function darker-accent
		set accent (jq -r .colors.color3 ~/.cache/wal/colors.json)
		sd $accent \#(darkerhex $accent) ~/.cache/wal/colors.json
		walfnadd
end
