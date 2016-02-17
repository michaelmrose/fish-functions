function open --description 'Open file in default application'
	if count $argv >/dev/null
			switch $argv[1]
				case -h --h --he --hel --help
					__fish_print_help open
					return 0
			end
		end

		if type -f cygstart >/dev/null
			for i in $argv
				cygstart $i
			end
		else if type -f xdg-open >/dev/null
			for i in $argv
				xdg-open $i
			end
		else
			mimedb -l -- $argv
		end
	
end
