function processtype
	if isaservice $argv
        echo service
    else
        echo process
    end
end
