function screen-info
    p (xrandr --props|g $argv[1] -A20)[6..21]|trim|sed 's/\t|^ //g'|xxd -r -p|parse-edid
end
