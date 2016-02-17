function pkt
	switch (count $argv)
        case 0
            set tag 'tech'
            set query ''
        case 1
            set tag $argv[1]
            set query ''
        case 2
            set tag $argv[1]
            set query $argv[2]
    end
    mpv (extract-pkt-url (rfi match "select from: " (list-pkt-articles $tag | grep -i $query))) &
end
