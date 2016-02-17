function list-pkt-titles
	for i in (list-pkt-articles $argv)
        cutlastn : 3- $i | cut -d '"' -f2-
    end
end
