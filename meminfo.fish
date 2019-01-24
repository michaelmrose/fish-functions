# Defined in /home/michael/.config/fish/buffer/meminfo.fish @ line 2
function meminfo
	
    #   if test $res -gt 1023
    #       set suffix M
    #       set res (echo $res |divideby 1024)
    #   else
    #       set suffix K
    #   end
    #   echo $res$suffix
	  human (pgrep $argv |each pmap -x|g total|nth 4 |sumof|multiplyby 1024)
end
