function roam-from-clipboard
	set url (xclip -o -selection clipboard)
	set encodedurl (encodeURIComponent $url)
	set title (http "$url"|pup title text{})
	set encodedtitle (encodeURIComponent $title)
	set link "org-protocol://roam-ref?template=r&ref=$encodedurl&title=$encodedtitle"
	jaro "$link"
end
