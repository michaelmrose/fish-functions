function decodeURIComponent
	if not exists $argv
		while read -l line
			node -e "console.log(decodeURIComponent('$line'))"|quote
		end
	else
			node -e "console.log(decodeURIComponent('$argv'))"|quote
	end
		
end
