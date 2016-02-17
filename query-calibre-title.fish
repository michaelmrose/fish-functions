function query-calibre-title --description 'returns list of titles, exact if present or list containing chosen phrase'
	set result (query-calibre contains $argv | jq .[].title)
    set exact (println $result | grep -i "$argv[2..-1]")
    if exists $exact
        println $exact
    else
        println $result
    end
end
