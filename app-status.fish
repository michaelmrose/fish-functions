# Defined in /usr/home/michael/.config/fish/buffer/app-status_calculator-status.fish @ line 2
function app-status
		set app $argv[1]
		switch $app
				case calculator
						set symbol 
		end
		echo i3status-rs-colorize " $symbol "
end
