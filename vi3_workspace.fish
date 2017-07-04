function vi3_workspace --description 'switch workspace [a-z]'
	for i in (explode-words $argv)
    set w $i(getwsstack $i)
    echo changing to $w
        # set ws $i(get-workspace-index $i)
        # i3-msg workspace $ws
        i3-msg workspace "$w"
      end
      er vi3op
      update-op-status
end
