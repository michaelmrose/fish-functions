function mdman
	grep -v "\-\-\-\-\-" $argv | pandoc -s -f markdown -t man | groff -T utf8 -man | less
 
end
