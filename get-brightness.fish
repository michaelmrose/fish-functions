function get-brightness
	set displays (get-connected-displays)
    set values (get-brightness-of-all)
    set ndx (findindex $argv $displays)
    echo $values[$ndx]
end
