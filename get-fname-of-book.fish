function get-fname-of-book --description 'get whole filename of book given its title'
	set title (stripquotes $argv)
    set files (query-calibre-formats title $title)
    set name (stripquotes (get-fname-of-file $files[1]))
    echo $name
end
