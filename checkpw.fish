function checkpw
	if [ $argv = "foobar" ]
        return 0
    else
        return 1
    end
end
