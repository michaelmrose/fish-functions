function vi3_mode
	i3-msg mode $argv
    set -U vi3mode $argv
    if match default $argv
      er vi3op
    end
    update-op-status
end
