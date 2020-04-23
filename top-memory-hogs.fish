# Defined in /home/michael/.config/fish/buffer/top-memory-hogs.fish @ line 2
function top-memory-hogs
    set hogs (ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head | awk '{print $3}'|sort -u|g --invert-match CMD)


for h in $hogs
    if-set name (path-of-binary $h) meminfo --full $name
end
end
