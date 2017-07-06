function vi3_workspace --description 'switch workspace [a-z]'
	for i in (explode-words $argv)
    set n (getwsstack $i)
    set w {$i}$n
    echo changing to $w
    if test $n -ne 1
      echo not branch
    end
    
    # set ws $i(get-workspace-index $i)
    # i3-msg workspace $ws
    i3-msg workspace "$w"
  end
  er vi3op
  update-op-status
  signal-i3blocks pages
end
