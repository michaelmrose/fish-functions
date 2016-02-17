function select-book --description 'use rofi to select a book if more than one is possible'
	if test (count $argv) -gt 1
        set val (rfi match "select book: " $argv)
        if not exists $val
            return 1
        end
        if contains $val $argv
            echo $val
        end
    else
        echo $argv
    end
end
