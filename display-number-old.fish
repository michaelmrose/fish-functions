function display-number-old
	set d (get-connected-displays)
	set n (math (findindex (get-focused-display) $d) -1)
  if test (count $d) -gt 1
    # inverse-of $n
    echo $n
  else
    echo $n
  end

	# math (findindex (get-focused-display) (get-connected-displays)) -1
end
