function write-file
	set tmp /tmp/(uid)
    set contents (eval $argv)
    println $contents > $tmp
    echo $tmp
end
