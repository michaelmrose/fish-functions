function roulette
	if match (math (random) \% 6) 0
    echo bang
    eval $argv
  else
    echo click
  end;
end
