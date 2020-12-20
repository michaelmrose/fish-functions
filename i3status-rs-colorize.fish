# Defined in /usr/home/michael/.config/fish/buffer/i3status-rs-colorize.fish @ line 2
function i3status-rs-colorize
		set color $argv[1] # One of Idle Info Good Warning
		set txt $argv[2..-1]
		echo "{\"state\":\"$color\", \"text\": \"$txt\"}"
end
