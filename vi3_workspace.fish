function vi3_workspace --description 'switch workspace [a-z]'
	for i in (explode-words $argv)
        echo changing to $i
        set ws $i(get-workspace-index $i)
        i3-msg workspace $ws
      end
      er vi3op
      update-op-status
end
