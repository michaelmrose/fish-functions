function extract-url-from-entry
	quote (echo "$argv" | cut -d '"' -f4)
end
