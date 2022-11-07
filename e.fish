function e
		# emacsclient -ecn  "($argv)"
		if not emacsclient -cn $argv
			emacsclient -cn "/doas::$argv"
		end
end
