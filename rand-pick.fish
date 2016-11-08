function rand-pick
	echo $argv[(rand-rng 1 (count $argv))]
end
