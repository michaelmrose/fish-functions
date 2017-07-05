function spreadwspages
	set letter (get-focused-workspace |cut -c1)
	for n in (seq 2 5)
    i3-msg move window to workspace {$letter}$n
    if not windowfocused
      return 0
    end
  end
end
