function get-ws-info1
	
    set var $argv[4]
    set val $argv[6]
    set desired $argv[2]
    set com i3-msg -t get_workspaces \| jq \'.\[\] \| \{output: .output, width: .rect.width, height: .rect.height, x: .rect.x, y: .rect.y, name: .name, visible: .visible, focused: .focused, urgent: .urgent\}\' \| jq -r \'select\(.$var == $val\).$desired\'
    eval $com
end
