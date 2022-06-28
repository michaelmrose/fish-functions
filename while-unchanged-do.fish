function while-unchanged-do
	set initial (eval $argv[2..-1])
	eval $argv[1] &
	echo initial is $initial
	while string match $initial (eval $argv[2..-1]) -q
		sleep 0.1
	end
end
