function focus-app
	set criteria (return-windowclass (appkey $argv))
  switch (count $argv)
    case 1
      set com i3-msg \'[class=$criteria]\' focus
    case 2
      set com i3-msg \'[class=$criteria[1] title=\"$criteria[2]\"]\' focus
  end
  eval $com
  er vi3op
  update-op-status
end
