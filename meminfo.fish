# Defined in /home/michael/.config/fish/buffer/meminfo.fish @ line 2
function meminfo
	set res (pgrep $argv |each pmap -x|g total|nth 4 |sumof)
    if test $res -gt 1023
        set suffix M
        set res (echo $res |divideby 1024)
    else
        set suffix K
    end
    echo $res$suffix
end
