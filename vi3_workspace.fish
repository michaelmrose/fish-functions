function vi3_workspace --description 'switch workspace [a-z]'
	for i in (explode-words $argv)
    set n (getwsstack $i)
    set w {$i}$n
    set ws (list-workspaces)
    echo changing to $w
    if test $n -ne 1
      echo not branch
      while not contains $w $ws
        set n (decrease $n)
        set w {$i}$n
        echo w is now $w
      end
    end
    
    # set ws $i(get-workspace-index $i)
    # i3-msg workspace $ws
    i3-msg workspace "$w"
  end
  er vi3op
  update-op-status
  signal-i3blocks pages
end
