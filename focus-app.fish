function focus-app
	set class (return-windowclass (appkey $argv))
  set com i3-msg \'[class=$class]\' focus
  eval $com
  er vi3op
  update-op-status
end
