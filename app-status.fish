# Defined in /usr/home/michael/.config/fish/buffer/app-status_calculator-status.fish @ line 1
function app-status
		set style $argv[1]
		set app $argv[2]
		switch $app
				case calculator
						set symbol 
		end
		i3status-rs-colorize $style $app
end
