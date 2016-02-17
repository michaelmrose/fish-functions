function vi3_operator-mode
	set -U vi3op $argv
    signal-i3blocks vi3
    update-op-status
    i3-msg mode "op"
end
