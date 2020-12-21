# Defined in /usr/home/michael/.config/fish/buffer/date-status-line_output-icon_u.fish @ line 7
function output-icon
		switch (output-type)
				case headphones
						set symbol 
				case speakers
						set symbol 
				case built-in
						set symbol 
				case "*"
						set symbol 
		end
		# echo $symbol

		i3status-rs-colorize Warning " $symbol "
end
