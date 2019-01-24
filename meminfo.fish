# Defined in /home/michael/.config/fish/buffer/meminfo.fish @ line 2
function meminfo
	human (pgrep $argv |each pmap -x|g total|nth 4 |sumof|multiplyby 1024)
end
