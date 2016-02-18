function query-calibre --description 'usage: query-calibre [exact,contains] criteria query returns answer in json'
	set type $argv[1]
    set field $argv[2]
    set query $argv[3..-1]
    switch $type
        case "exact"
            # set com (echo calibredb list --fields formats,title,$field -s {$field}:\"=\"$query\"\" --for-machine)
            set com (echo calibredb list --fields formats,title,$field -s \'{$field}:=\"$query\"\' --for-machine)
        case "contains"
            set com (echo calibredb list --fields formats,title,$field -s $field:$query --for-machine)
    end
    eval $com
end
