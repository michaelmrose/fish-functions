function vi3_start-vi3
	vi3_define-vars
  for i in (alphabet)
    set ws workspaceindex_$i
    set -U $ws 1
  end
    # vi3_setup-keyboard
    # vi3_bind-shift-keys
end
