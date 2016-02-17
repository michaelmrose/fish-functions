function query-calibre-title2
	set result (query-calibre2 \' $argv \' | jq .[].title)
    echo $result
end
