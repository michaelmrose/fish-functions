function desktop-number-by-name
xprop -root _NET_DESKTOP_NAMES | awk -v name="w" 'BEGIN {FS=", \"|\""} {for (i=2; i<=NF; i++) if ($i == name) print i-2}'
end
