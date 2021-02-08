# Defined in /usr/home/michael/.config/fish/buffer/meminfo.fish @ line 2
function meminfo
    if exists $argv
        human (pgrep $argv |each s pmap -x|g total|nth 5 |sumof|multiplyby 1024)
    else
        while read -l line
            pmap -x $line |g total|nth 5|sumof|multiplyby 1024|each human
        end
    end
end
