function matches
	set com "echo $argv[1] | grep -E --regexp '^$argv[2..-1]\$'"
    eval $com > /dev/null
end
