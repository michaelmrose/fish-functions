function every
    set -l interval $argv[1]
    while true
        # Everything after "every 5" are commands to eval
        eval "$argv[2..-1]"
        sleep $interval
    end
end
