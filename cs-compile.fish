function cs-compile
	~/clojurescript/bin/cljsc $argv[1] '{:optimizations :advanced}' > $argv[2]
end
