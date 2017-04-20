function foreach
	set fn $argv[-1]
  set l $argv[1..-2]
  echo f is $fn and l is $l
    for i in $l
        echo body is $body
        echo i is $i
        eval (echo $fn | sed "s#_#$i#g")
    end
end
