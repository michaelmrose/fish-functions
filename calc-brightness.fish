function calc-brightness
	set display $argv[2]
	set number $argv[1]
  set type (match-lists $number "+ -" "adj adj" num)
  echo t is $type
  set adjustment (stripsign $number)
  set currentval (get-brightness $display)
  if expr $number : +[0-9]\* > /dev/null
      set adjustment (math $currentval + $adjustment)
  end
  if expr $number : -[0-9]\* > /dev/null
      set adjustment (math $currentval - $adjustment)
  end
  
  wcalc -q "$adjustment / 100"
end
