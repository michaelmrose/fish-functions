function umask --description 'Set default file permission mask'
	
	set -l as_command 0
	set -l symbolic 0
	
	set -l options
	set -l shortopt pSh
	if not getopt -T >/dev/null
		# GNU getopt
		set longopt -l as-command,symbolic,help
		set options -o $shortopt $longopt --
		# Verify options
		if not getopt -n umask $options $argv >/dev/null
			return 1
		end
	else
		# Old getopt, used on OS X
		set options $shortopt
		# Verify options
		if not getopt $options $argv >/dev/null
			return 1
		end
	end

	set -l tmp (getopt $options $argv)
	eval set opt $tmp

	while count $opt >/dev/null

		switch $opt[1]
			case -h --help
				__fish_print_help umask
				return 0

			case -p --as-command
				set as_command 1

			case -S --symbolic
				set symbolic 1

			case --
				set -e opt[1]
				break

		end

		set -e opt[1]

	end

	switch (count $opt)

		case 0
			if not set -q umask
				set -g umask 113
			end
			if test $as_command -eq 1
				echo umask $umask
			else
				if test $symbolic -eq 1
					__fish_umask_print_symbolic $umask
				else
					echo $umask
				end
			end

		case 1
			set -l parsed (__fish_umask_parse $opt)
			if test (count $parsed) -eq 1
				set -g umask $parsed
				return 0
			end
			return 1

		case '*'
			printf (_ '%s: Too many arguments\n') umask >&2

	end

end
