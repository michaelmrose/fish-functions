function navwsstack
	set current (get-focused-workspace)
  set letter (echo $current | cut -c1)
  set n (echo $current | cut -c2)
  switch $argv
    case up
      set n (increase n)
    case down
      set n (decrease n)
  end

  setwsstack $letter $n
  ws $letter$n
end
