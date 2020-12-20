# Defined in /usr/home/michael/.config/fish/buffer/output-icon.fish @ line 17
function i3status-rs-colorize
		set color $argv[1] # One of idle good warning critical
		set txt $argv[2..-1]
		echo "{\"state\":\"$color\", \"text\": \"$txt\"}"
end
