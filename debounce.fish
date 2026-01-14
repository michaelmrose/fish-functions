function debounce
    # Usage: some_command | debounce 0.75
    set -l interval $argv[1]
    set -l last ""
    set -l last_time 0

    while read -l line
         if test "$line" != "$last"
            set last $line
            echo $line
        end
    end
end
