# Defined in /home/michael/.config/fish/buffer/lines.fish @ line 2
function lines
	while read -l line
      set acc $acc $line
  end
  set numbers (p $argv | cut -d - -f1- --output-delimiter=" ")
  
  if test (count $numbers) -eq 2
      # p $acc | sed -n $numbers[1],$numbers[2]
      echo p $acc \| sed -n $numbers[1],$numbers[2]
  else
      echo else
      # p $acc | sed -n $numbers[1]
      echo p $acc \| sed -n $numbers[1]
  end
end
