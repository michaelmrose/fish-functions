function calibre-fnames
	echo $argv | jq .[].formats
end
