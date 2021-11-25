function emc
	while not emacsclient -e '(+ 1 1)'
	end; emacsclient -cn $argv &
end
