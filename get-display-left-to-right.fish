function get-display-left-to-right
	set outputs (xrandr | grep " connected" | cut -d " " -f1)
    set offsets (xrandr | grep " connected" | cut -d + -f2)
    set sorted (println $offsets | sort)
    for i in (seq (count $outputs))
        set x (findindex $sorted[$i] $offsets)
        set lst $lst $outputs[$x]
    end
    println $lst
end
