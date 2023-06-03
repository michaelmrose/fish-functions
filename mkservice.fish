function mkservice
	if [ $argv[1] = -e]
		set edit_service_file true
		set name $argv[2..-1]
	else
		set name $argv
	end
	set service ~/service/$name
	mkdir $service
	echo "#!/bin/fish" >> $service/run
	echo "exec $name" >> $service/run
	if exists $edit_service_file
		emacsclient -c ~/service/$name/run
	end
	enable $name
end
