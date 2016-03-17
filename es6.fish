function es6
	traceur --out (echo $argv | sed 's#\.es6$#\.js#g') --script $argv
end
