function current-output
	set op (list-outputs)
    set ndx (math $default_sink+1)
    echo $op[$ndx] | sed 's/\t//g' | sed 's/*//g' | trim
    return 0
end
