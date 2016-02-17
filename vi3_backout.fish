function vi3_backout
	set -e vi3op
    set -e combolist
    set -U numkeyed 0
    i3-msg mode "default"
    update-op-status
end
