function set-trans
	transset -i (wininfo id dec) (return-trans-value (return-winclass (wininfo id dec)))
end
