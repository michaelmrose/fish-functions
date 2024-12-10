function desktop-number-by-name
  xprop -root _NET_DESKTOP_NAMES |
    awk -v name="$argv[1]" '
        BEGIN { FS = ", *\"|\"| *, *"; index_found = -1 }
        {
            for (i = 2; i <= NF; i++) {
                if ($i == name) {
                    print i - 2
                    exit
                }
            }
        }
        END {
            if (index_found == -1) print "*"
        }'
end
