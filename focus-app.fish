# Defined in /home/michael/.config/fish/buffer/focus-app.fish @ line 2
function focus-app
	set criteria (explode-words (return-windowclass (appkey $argv)))

    switch (count $criteria)
            case 1
      set com i3-msg \'[class=$criteria]\' focus
    case 2
      set com i3-msg \'[class=$criteria[1] title=\"$criteria[2]\"]\' focus
  end
  if contains mu4e $argv
      set com i3-msg \'[title=.*mu4e.*]\' focus
  end
  echo $com
  set res (eval $com)
  er vi3op
  update-op-status
  echo $res | grep true
  signal-i3blocks pages
end
