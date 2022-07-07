function keyboardordering
    switch $argv
		case q
			set target
		case w
			set target
		case e
			set target
		case r
			set target
		case a
			set target
		case s
			set target
		case d
			set target
		case f
			set target
		case z
			set target
		case x
			set target
		case c
			set target
		case v
			set target
        case "*"

        echo $argv
        return 0
    end
    echo {$target}:{$argv}
end
