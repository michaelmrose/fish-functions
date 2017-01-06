function vi3_workspace --description 'switch workspace [a-z]'
	for i in (explode-words $argv)
        echo changing to $i
        # set ws (get-workspace-letter)(get-workspace-index)
        i3-msg workspace $i
      end
      er vi3op
      update-op-status
end
