function while-unchanged
	set initial ($argv)
	while string match $initial ($argv) -q
		sleep 0.1
	end
end
