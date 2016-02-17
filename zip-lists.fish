function zip-lists
	set size (math (count $argv) / 2)
  for i in (seq $size)
    echo $argv[$i] $argv[(math $i + $size)]
  end
end
