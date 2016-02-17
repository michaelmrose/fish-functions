function center-text
	set msize (sizeof "$argv")
    set buffer (math "480 / 2 - $msize")
    set message (spaces $buffer) $argv (spaces $buffer)
    echo $message
end
