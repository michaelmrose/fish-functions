function display-number
	set d (get-connected-displays)
	set n (math (findindex (get-focused-display) $d) -1)
  if test (count $d) -gt 1
    inverse-of n
  else
    echo n
  end

	# math (findindex (get-focused-display) (get-connected-displays)) -1
end
