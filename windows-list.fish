function windows-list
	set lst (wmctrl -lxp | condense_spaces)
    if not exists $argv
        println $lst
    else
        switch $argv
            case id
                println $lst | cut -d ' ' -f1
            case pid
                println $lst | cut -d ' ' -f2
            case class
                println $lst | cut -d ' ' -f4 | cut -d '.' -f1
            case '*'
                echo invalid
        end
    end
end
