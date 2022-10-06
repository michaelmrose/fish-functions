function timed-start
	set app $argv[1..-2]
	set class $argv[-1]
	$app &
	while not wmctrl -lx|awk '{print $3}'|cut -d . -f2|grep $class
	end
end
