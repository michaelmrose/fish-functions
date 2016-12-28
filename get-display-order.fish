function get-display-order
	set outputs (xrandr | grep " connected" | cut -d " " -f1)
  set ordered (reverse (get-display-left-to-right))
    for i in $outputs
        math (findindex $i $ordered) - 1
    end
end
