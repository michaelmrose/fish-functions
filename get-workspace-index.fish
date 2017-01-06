function get-workspace-index
	if exists $argv
    set var workspaceindex_$argv
    echo $$var
  else
    set var workspaceindex_(get-workspace-letter)
    echo $$var
  end
end
