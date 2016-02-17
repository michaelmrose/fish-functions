function within
	set num (truncate-num $argv[2])
    set min (echo $argv[1] | cut -d "-" -f1)
    set max (echo $argv[1] | cut -d "-" -f2)
    test $num -ge $min -a $num -le $max
end
