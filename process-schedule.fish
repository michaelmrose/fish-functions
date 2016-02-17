function process-schedule
	for i in (cat $argv)
        work $i
    end
end
