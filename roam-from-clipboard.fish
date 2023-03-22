function roam-from-clipboard
	set url (xclip -o -selection clipboard) >/dev/null
	set title http "url"|pup title text{}
	echo $url $title
end
