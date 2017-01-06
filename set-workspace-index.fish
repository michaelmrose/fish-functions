function set-workspace-index
	set var workspaceindex_(get-workspace-letter)
  set -U $var $argv
end
