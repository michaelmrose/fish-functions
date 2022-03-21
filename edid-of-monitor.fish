function edid-of-monitor
    p (xrandr --props|g $argv -A20)[6..21]|sed 's/\t|^ //g'|xxd -r -p|parse-edid
end
