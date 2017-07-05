function condensewspages
	set focused (get-focused-workspace)
  set letter (echo $focused | cut -c1)
  # set pages (list-workspaces | gr "^$letter")
  ws {$letter}1
  for n in (seq 2 5)
    i3-msg [workspace={$letter}$n] move container to workspace {$letter}1
  end
  setwsstack $letter 1
  ws $letter
  signal-i3blocks pages
end
