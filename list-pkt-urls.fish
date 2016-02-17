function list-pkt-urls
	for i in (list-pkt-articles $argv)
        cutlastn : -2 $i | trim
    end
end
