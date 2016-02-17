function vi3_toggle_shift_keys
	if pgrep xcape > /dev/null
        killall xcape
    else
        vi3_setup-keyboard
        vi3_bind-shift-keys
    end
end
