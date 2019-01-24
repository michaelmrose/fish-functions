# Defined in /home/michael/.config/fish/buffer/meminfo.fish @ line 2
function meminfo
	
    #       set acc (math "$acc" + "$val")
    #   end
    #   echo {$acc}M
    #   # set val (math (pmap -x (pgrep $argv) | grep total | condense_spaces | cut -d " " -f5) / 1024)
    #   # echo {$val}M
    #   for i in (pgrep $argv);pmap -x $i | gr total | nth 3;end | sumof
    set res (pgrep $argv |each pmap -x|g total|nth 4 |sumof)
    if test $res -gt 1023
        set suffix M
    else
        set suffix K
    end
    echo $res$suffix
end
