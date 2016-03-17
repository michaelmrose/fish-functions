function es6
	set in $argv
  set out (echo $in | sed 's#.js$#.es6$#g')
  echo traceur --out $out --script $in
end
