function vsorted
    ls -1 *.* | sed -E 's/.*[^0-9]([0-9]+)[^0-9]*$/\1\t&/' | sort -n -k1,1 | cut -f2-
end
