function setwsstack
	set com wsstack{$argv[1]} $argv[2]
  echo $com
  eval $com
end
