function calculator-fn
	emf ecn full-calc
	# waituntilfocused Emacs
	sleep 0.25
	i3-msg resize shrink left (math (get-focused-display-width) / 10)px
end
