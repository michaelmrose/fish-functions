function unset-fullscreen
	if is-fullscreen
        i3-msg fullscreen > /dev/null
    end
end
