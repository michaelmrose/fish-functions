function spreadwspages
	set letter (get-focused-workspace |cut -c1)
  select-all-in-workspace
  i3-msg move container to workspace collect
  i3-msg workspace collect
  for n in (seq 1 5)
    i3-msg move window to workspace {$letter}$n
  end
  setwsstack $letter 1
  ws $letter
   signal-i3blocks pages
end
