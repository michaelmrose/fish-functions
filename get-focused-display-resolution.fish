function get-focused-display-resolution
	# set res (xrandr --verbose | grep " connected" | grep (get-focused-display) | cut -d "x" -f1-2 | cut -d "+" -f1)
  #   set res (explode $res)
  #   set res $res[-1]
  #   echo $res
	# xrandr --verbose | grep " connected" | grep (get-focused-display) | cut -d "x" -f3 | cut -d "+" -f1
# string match -r '^[0-9].*' (explode-words (xrandr --verbose | grep ' connected' | grep (get-focused-display))) | grep x | cut -d '+' -f1
string match -r '^[0-9].*' (explode-words (xrandr --verbose | grep ' connected' | cut -d ' ' -f1-4 | grep (get-focused-display))) | cut -d '+' -f1
end
