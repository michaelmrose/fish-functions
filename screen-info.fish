function screen-info
    xrandr |g $argv
    p (xrandr --props|g $argv[1] -A20)[6..21]|trim|sed 's/	|^ //g'|xxd -r -p|parse-edid
end
