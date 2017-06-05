function focus-app
	set criteria (explode-words (return-windowclass (appkey $argv)))
  switch (count $criteria)
    case 1
      set com i3-msg \'[class=$criteria]\' focus
    case 2
      set com i3-msg \'[class=$criteria[1] title=\"$criteria[2]\"]\' focus
  end
  echo $com
  eval $com
  er vi3op
  update-op-status
end
