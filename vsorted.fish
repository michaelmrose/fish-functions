function vsorted
    printf '%s\n' * |
        awk 'match($0, /-v?[0-9]+([-_.]|$)/) {
            s = substr($0, RSTART, RLENGTH)
            sub(/^-v?/, "", s)
            sub(/[-_.].*$/, "", s)
            print s "\t" $0
        }' |
        sort -n -k1,1 |
        cut -f2-
end
