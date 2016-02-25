function calc-brightness
	set display (get-connected-displays)[1]
	set number $argv[1]
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
