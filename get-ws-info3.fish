function get-ws-info3
	i3-msg -t get_workspaces | jq . | grep -E "$argv[2].*$argv[3]" -B 12 -A 10 | grep -E "$argv[1].*" | cut -d : -f2 | sort -u
end
