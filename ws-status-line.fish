function ws-status-line
	set current $argv
  set letter (echo $current | cut -c1)
  set n (echo $current | cut -c2)
  set workspaces (list-workspaces)
  set numbers (p $workspaces | gr "^$letter" | cut -c2)
  if test (count $numbers) -eq 1
    echo "$letter"   
  else
    echo $letter: (echo $numbers | sed "s/$n/\[$n\]/g")
  end
end
