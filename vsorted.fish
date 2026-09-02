function vsorted
    printf '%s\n' *.* |
        awk 'match($0, /[0-9]+(\.[^.]+)?$/) {
            s = substr($0, RSTART, RLENGTH)
            sub(/\.[^.]+$/, "", s)
            print s "\t" $0
        }' |
        sort -n -k1,1 |
        cut -f2-
end
