function mybuffer
	switch $argv
        case "erase"
           set buffer ""
        case "*"
            set buffer $buffer$argv
    end
end
