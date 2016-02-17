function query-calibre-formats --description 'returns files for a given exact title'
	if test (sizeof $argv[2]) -gt 0
        query-calibre exact $argv | jq .[].formats[]
    end
end
