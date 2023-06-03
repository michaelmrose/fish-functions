function mkservice
	set service ~/service/$argv
	mkdir $service
	echo "#!/bin/fish" >> $service/run
	echo "exec $argv" >> $service/run
	emacsclient -c ~/service/$argv/run
	enable $argv
end
