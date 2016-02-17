function return-query --description 'returns a properly formated query for query-calibre-title'
	set selector $argv[1]
    if match $selector author
        set selector authors
    end
    if match $selector tag
        set selector tags
    end
    set criteria authors title publisher series tags

    if contains $selector $criteria
        set query $argv[2..-1]
    else
        set selector title
        set query $argv
    end
    println $selector $query
end
