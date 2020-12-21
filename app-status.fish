# Defined in /usr/home/michael/.config/fish/buffer/app-status_calculator-status_i.fish @ line 2
function app-status
		set style $arg[1]
		set app $argv[2]
		switch $app
				case calculator
						set symbol 
		end
		echo symbol is $symbol
		i3status-rs-colorize $style " $symbol "
end
