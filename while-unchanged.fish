function while-unchanged
	set initial ($argv)
	while string match $initial ($argv)
		sleep 0.1
	end
end
