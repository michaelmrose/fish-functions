function focus-app
	set class (return-windowclass (appkey $argv))
  i3-msg [class=$class] focus
  er vi3op
  update-op-status
end
