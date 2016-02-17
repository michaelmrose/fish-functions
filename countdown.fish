function countdown
	echo going in ....
    for i in (reverse (seq $argv))
        echo $i
        sleep 1
    end
    echo too late!
end
