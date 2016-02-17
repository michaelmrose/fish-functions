function padded
	set val $argv
    for i in (range 30)
        set val $val ""
    end
    println $val
end
