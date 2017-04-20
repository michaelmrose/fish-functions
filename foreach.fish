function foreach
	set fn $argv[1]
    for i in $argv[2..-1]
        set body (echo $fn | sed "s#_#$i#g")
        echo eval $body
    end
end
