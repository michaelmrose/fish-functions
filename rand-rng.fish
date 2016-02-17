function rand-rng
	set n1 $argv[1]
    set n2 $argv[2]
    math (random) \% $n2 + $n1
end
