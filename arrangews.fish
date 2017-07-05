function arrangews
	set letter (get-focused-workspace | cut -c1)
  if wsispaged $letter
    condensewspages
  end
  switch $argv
    case tabbed
      i3-msg layout tabbed
    case splith
      i3-msg layout splith
    case splitv
      i3-msg layout splitv
    case stacked
      i3-msg layout stacked
    case paged
      spreadwspages
  end
end
