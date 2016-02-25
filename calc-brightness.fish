function calc-brightness
	set display $argv[2]
	set number $argv[1]
  if expr $number : [0-9]\* > /dev/null
    set adjustment $number
  else if expr $number : +[0-9]\* > /dev/null
    update-brights
    set adjustment (stripsign $number)
    set currentval (get-last-bright $display)
    set adjustment (math $currentval + $adjustment)
  else if expr $number : -[0-9]\* > /dev/null
    update-brights
    set adjustment (stripsign $number)
    set currentval (get-last-bright $display)
    set adjustment (math $currentval - $adjustment)
  end
  
  wcalc -q "$adjustment / 100"
end
