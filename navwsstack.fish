# Defined in /home/michael/.config/fish/buffer/navwsstack.fish @ line 2
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
      set n (math $n - 1)
  end

  set n (circular $n 1 5)
  echo n is $n
  setwsstack $letter $n
  ws $letter$n
end
