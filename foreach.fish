function foreach
	set fn $argv[-1]
  if test (count $argv) -gt 1 > /dev/null
  set l $argv[1..-2]
    for i in $l
        eval (echo $fn | sed "s#_#$i#g")
    end
  end
end
