function unlock-with-buffer
	if checkpw $buffer
        unlockme
    end
    mybuffer erase
end
