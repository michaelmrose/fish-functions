function randomroll
	switch $argv[1]
        case binary
            rand -M 2
        case select
            set lst $argv[2..-1]
            set num (randomroll (count $lst))
            echo $lst[$num]
        case fromzero
            set num (randomroll $argv[2])
            math $num - 1
        case "*"
            set num $lastroll
            while test $num -eq $lastroll
                set num (rand -M $argv)
                set $num (math $num + 1)
            end
            math $num + 1
            set -U lastroll $num
    end

end
