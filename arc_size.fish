function arc_size
    human (awk '/^size/ { print $3 }' < /proc/spl/kstat/zfs/arcstats)
end
