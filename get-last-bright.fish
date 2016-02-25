function get-last-bright
	set displays (get-connected-displays)
  set ndx (findindex $argv $displays)
  echo $BRIGHTS[$ndx]
end
