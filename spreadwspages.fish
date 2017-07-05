function spreadwspages
	set letter (get-focused-workspace |cut -c1)
  for n in (seq 2 5)
    i3-msg move window to workspace {$letter}$n
    if not windowfocused
      i3-msg [workspace={$letter}n move container to workspace {$letter}1]
      signal-i3blocks pages
      return 0
    end
  end
end
