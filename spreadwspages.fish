function spreadwspages
	set letter (get-focused-workspace |cut -c1)
  for n in (seq 2 5)
    i3-msg move window to workspace {$letter}$n
    # if windowfocused
    #   # i3-msg [workspace={$letter}n move container to workspace {$letter}(math n - 1)]
    # else
    #   return 0
    # end
  end
   signal-i3blocks pages
end
