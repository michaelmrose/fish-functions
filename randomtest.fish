function randomtest
	set num[1] (rand -M 7) &
    set num[2] (rand -M 7) &
    set num[3] (rand -M 7) &
    set num[4] (rand -M 7) &
    set num[5] (rand -M 7) &
    sleep 0.01
    for i in $num
        if test $i -ne $lastroll
            set -U lastroll $i
            echo $i
            return 0
        end
    end
    randomtest
end
