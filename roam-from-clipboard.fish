function roam-from-clipboard
	set url (xclip -o -selection clipboard)
	set encoded (node -e "console.log(encodeURIComponent('$url'))")
	set title (http "$url"|pup title text{})
	set link "org-protocol://roam-ref?template=r&ref=$encoded&title=$title"
	echo "$link"
end
