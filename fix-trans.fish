function fix-trans
	transset -i $argv (return-trans-value (return-winclass (wininfo id dec)))
end
