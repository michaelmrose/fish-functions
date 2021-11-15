function focus-pane-or-window
    switch (window-class)
	case Emacs
	    if emf e windmove-$argv
		nil
	    else
		i3-msg focus $argv
	    end
	case '*'
	    i3-msg focus $argv
    end
end
