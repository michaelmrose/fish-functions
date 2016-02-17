function book-exists
	set result (query-calibre exact title $argv | jq .[].title)
    positive (count $result)
end
