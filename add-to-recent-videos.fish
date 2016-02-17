function add-to-recent-videos
	set url "$argv"
    set title (given-url-get-title "$url")
    set url (quote $url)
    set entry $title $url
    set -U recent_videos (take 20 (unique (println "$entry" $recent_videos)))
end
