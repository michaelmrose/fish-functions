function e
		if stat -c %U $argv
			emacsclient -cn $argv
		else
			emacsclient -cn "/doas::$argv"
		end
end
