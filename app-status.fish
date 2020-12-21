# Defined in /usr/home/michael/.config/fish/buffer/app-status.fish @ line 2
function app-status
		set style $argv[1]
		set app $argv[2]
		switch $app
				case calc
						set symbol 
				case firefox
						set symbol 
				case emacs
						set symbol 
				case terminal
						set symbol 
				case rofi
						set symbol λ
						# 
		end
		i3status-rs-colorize $style " $symbol "
end
