function extract-title
	cutlast "/" "$argv" | cut -d "-" -f1 | trim | sed 's/_/:/g'
end
