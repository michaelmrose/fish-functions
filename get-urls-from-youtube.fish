function get-urls-from-youtube
	set data $argv
    set urls (apply-to-list return-youtube-url (echo $data | jq .url)) 
    println $urls
end
