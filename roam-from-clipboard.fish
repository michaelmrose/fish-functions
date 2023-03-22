function roam-from-clipboard
	set url (xclip -o -selection clipboard)
	set title (http "$url"|pup title text{})
	set link "org-protocol://roam-ref?template=r&ref=$url&title=$title"
	echo $link
end
