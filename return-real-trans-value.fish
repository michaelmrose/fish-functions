function return-real-trans-value
	# if is-window-hidden $argv
	if false
    echo 0
  else
    return-trans-value (return-winclass $argv)
    return 0
  end
end
