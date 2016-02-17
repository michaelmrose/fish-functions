function get-aquarium-url
	set url (get-museum-by-venue-url)
    set url (curl "$url" | pup | grep pInstitution=Seattle%20Aq | head -1 | cut -d '"' -f2 | sed 's#amp;##g')
    echo http://www.libraryinsight.net/$url
end
