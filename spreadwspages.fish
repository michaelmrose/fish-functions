function spreadwspages
	for n in (seq 2 5)
    i3-msg move window to workspace {$letter}$n
    if not windowfocused
      return 0
    end
  end
end
