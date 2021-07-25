# Defined in /usr/home/michael/.config/fish/buffer/compute-brightness_darker-acce.fish @ line 10
function darker-accent
		set accent (jq -r .colors.color3 ~/.cache/wal/colors.json)
		sd $accent \#(darkerhex $accent) ~/.cache/wal/colors.json
		walfnadd
end
