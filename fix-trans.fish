function fix-trans
	if not is-window-hidden $argv
    transset -i $argv (return-trans-value (return-winclass $argv))
  end
end
