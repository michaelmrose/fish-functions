function calc-brightness
	set display $argv[2]
	set number $argv[1]
  if expr $number : [0-9]\* > /dev/null
    set adjustment $number
  else if expr $number : +[0-9]\* > /dev/null
    set adjustment (stripsign $number)
    set currentval (get-brightness $display)
    set adjustment (math $currentval + $adjustment)
  else if expr $number : -[0-9]\* > /dev/null
    set adjustment (stripsign $number)
    set currentval (get-brightness $display)
    set adjustment (math $currentval - $adjustment)
  end
  
  wcalc -q "$adjustment / 100"
end
