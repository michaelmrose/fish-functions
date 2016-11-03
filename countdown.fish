function countdown
	echo going in ....
    for i in (reverse (seq $argv[1]))
        sendit $i
        sleep 1
    end
    echo too late!
end
