# Defined in /home/michael/.config/fish/buffer/lines_nth.fish @ line 2
function lines
	while read -l line
      set acc $acc $line
  end
  set numbers (echo $argv | cut -d - -f1- --output-delimiter=" " | all explode-words)
  
  if test (count $numbers) -eq 2
      p $acc | sed -n $numbers[1],$numbers[2]p
  else
      p $acc | sed -n $numbers[1]p
  end
end
