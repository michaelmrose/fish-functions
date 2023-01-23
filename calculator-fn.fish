function calculator-fn
	emf ecn full-calc
	# waituntilfocused Emacs
	sleep 0.25
i3-msg resize set width (math (get-foc
used-display-width) / 4)px
end
