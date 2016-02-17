function mth
	set varname $argv[1]; set varvalue $$argv[1]; set opstring $argv[2]
    set expression (echo "set $varname (math \"$opstring\")" | sed "s/self/$varvalue/g")
    eval $expression
    echo $$argv[1]
end
