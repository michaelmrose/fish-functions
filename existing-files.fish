function existing-files
	for i in $argv
        if fs-exists $i
            echo $i
        end
    end
end
