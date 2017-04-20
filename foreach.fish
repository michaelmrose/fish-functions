function foreach
	set fn $argv[-1]
  set l $argv[1..-2]
    for i in $l
        set body (echo $fn | sed "s#_#$i#g")
        echo eval $body
    end
end
