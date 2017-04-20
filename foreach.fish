function foreach
	set fn $argv[-1]
  set l $argv[1..-2]
    for i in $l
        eval (echo $fn | sed "s#_#$i#g")
    end
end
