function get-available-aq-dates
	set url (get-aquarium-url)
    set dates (curl "$url" |  pup 'span[class=dates]' | grep title | cut -d " " -f4- | cut -d '"' -f2)
    if exists $dates
        println $dates
    else
        return 1
    end
end
