function debounce
    # Usage: some_command | debounce 0.75
    set -l interval $argv[1]
    set -l last ""
    set -l last_time 0

    while read -l line
        set -l now (date +%s.%N)

        if test "$line" = "$last"
            continue
        end

        if test (math "$now - $last_time") -ge $interval
            echo $line
            set last $line
            set last_time $now
        end
    end
end
