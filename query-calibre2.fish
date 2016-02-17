function query-calibre2 --description 'usage: query-calibre query returns answer in json'
	set fields (odds $argv)
    set queries (evens $argv)
    for i in (seq (count $fields))
        set acc $acc $fields[$i]:$queries[$i] and
    end
    calibredb list --fields formats,title -s $argv --for-machine
end
