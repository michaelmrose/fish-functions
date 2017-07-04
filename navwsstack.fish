function navwsstack
	set current (get-focused-workspace)
  set letter (echo $current | cut -c1)
  set n (echo $current | cut -c2)
  echo n is $n
  switch $argv
    case up
      set n (math $n + 1)
  echo n is $n
    case down
      set n (decrease n)
  end

  echo n is $n
  setwsstack $letter $n
  ws $letter$n
end
