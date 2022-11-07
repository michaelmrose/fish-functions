function e
		if stat -c %U $argv > /dev/null
			emacsclient -cn $argv
		else
			echo opening as root
			emacsclient -cn "/doas::$argv"
		end
end
