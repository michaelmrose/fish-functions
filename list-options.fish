function list-options
	eval $argv --help | grep '^[[:space:]]*-' | sed 's#\s\+# #g' | sed -e 's/^ *//' -e 's/ *$//' | sort -u
end
