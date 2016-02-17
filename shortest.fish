function shortest
	set shortest $argv[1]
        for i in $argv
            if test (sizeof $i) -lt (sizeof $shortest)
                set shortest $i
            end
        end
        echo $shortest
end
