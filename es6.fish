function es6
	set in $argv
  set out (echo $in | sed 's#\.es6$#\.js#g')
  echo traceur --out $out --script $in
end
