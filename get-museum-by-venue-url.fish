function get-museum-by-venue-url
	curl http://www.spl.org/library-collection/museum-pass | pup | grep mpbymuseum | grep href | head -1 | cut -d '"' -f2
end
