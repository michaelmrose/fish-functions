# Defined in /home/michael/.config/fish/buffer/vi3_workspace.fish @ line 2
function vi3_workspace --description 'switch workspace [a-z]'
	for i in (explode-words $argv)
    set n (getwsstack $i)
    set w {$i}$n
    set ws (list-workspaces)
    echo changing to $w
    if test $n -ne 1
      while not contains $w $ws
        set n (decrease $n)
        set w {$i}$n
        setwsstack $i $n
      end
    end
    
    # set ws $i(get-workspace-index $i)
    # i3-msg workspace $ws
    screenshot-desktop
    i3-msg workspace "$w"
  end
  er vi3op
  update-op-status
  signal-i3blocks pages
end
