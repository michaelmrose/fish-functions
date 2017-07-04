function pushws
	set current (get-focused-workspace)
  set letter (echo $current | cut -c1)
  set n (echo $current | cut -c2)
  set n (bounded $n 1 5)
  switch $argv
    case up
      set n (math $n + 1)
    case down
      set n (math $n - 1)
  end
  setwsstack $letter $n
  tws $letter
end
