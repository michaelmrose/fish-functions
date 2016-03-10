function return-real-trans-value
	if is-window-hidden $argv
    echo 0
  else
    return-trans-value (return-winclass $argv)
    return 0
  end
end
