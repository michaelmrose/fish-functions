function get-ws-info2
	
    eval i3-msg -t get_workspaces \| jq \'.\[\] \| \{output: .output, width: .rect.width, height: .rect.height, x: .rect.x, y: .rect.y, name: .name, visible: .visible, focused: .focused, urgent: .urgent\}\' \| jq -r \'select\(.$argv[2] == $argv[3]\).$argv[1]\'
end
