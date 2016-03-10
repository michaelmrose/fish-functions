function fix-trans
	transset -i $argv (return-real-trans-value (return-winclass $argv))
end
