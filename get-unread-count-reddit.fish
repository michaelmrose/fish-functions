function get-unread-count-reddit
	curl -b ~/.cjar.txt -A 'Mozilla/4.0' 'https://www.reddit.com/message/unread/' | pup | grep '<span class="subject-text">' | wc -l
end
