function vi3_mode
	i3-msg mode $argv
    set -U vi3mode $argv
    update-op-status
end
