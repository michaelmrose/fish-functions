function roam-from-clipboard
	set ref (xclip -o)
	jaro "org-protocol://roam-ref?=template=r&ref=$ref&title="

end
