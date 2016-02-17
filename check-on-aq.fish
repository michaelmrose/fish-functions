function check-on-aq
	while true
        echo checking now...
        set dates (get-available-aq-dates)
        if exists $dates
            println $dates
            echo "the aquarium is available on the following dates $dates" | msmtp -a default michael@rosenetwork.net
        else
            echo none available at (date)
        end
        set -e dates
        echo checking again in 10 seconds
        sleep 10
    end
end
