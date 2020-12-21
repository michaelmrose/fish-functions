# Defined in /usr/home/michael/.config/fish/buffer/app-status_calculator-status_i.fish @ line 18
function i3status-rs-colorize
		set color $argv[1] # One of Idle Info Good Warning
		set txt $argv[2..-1]
		echo "{\"state\":\"$color\", \"text\": \"$txt\"}"
end
