function ws-status-line
	# echo 'f a c {1 [2] 3}' 
  # echo 'f {[1]} a {[1] c{1 [2] 3}}'
  # echo 'a [1] 2 s d f 1 [2] 3'
  # set current (get-focused-workspace)
  set current $argv
  set letter (echo $current | cut -c1)
  set n (echo $current | cut -c2)
  set workspaces (list-workspaces | gr "^$letter" | cut -c2)
  # echo w is $workspaces l is $letter and n is $n
  if test (count $workspaces) -eq 1
    echo "$letter:     "  
  else
    echo $letter: (echo $workspaces | sed "s/$n/\[$n\]/g")
  end
end
