function e
	emacsclient -cn $argv
		# if stat -c %U $argv &> /dev/null;and test -d (dirname $argv)
		# 	emacsclient -cn $argv
		# else
		# 	echo opening as root
		# 	emacsclient -cn "/doas::$argv"
		# end
end
