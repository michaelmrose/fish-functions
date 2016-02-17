function pipv
	set pyversion (pyversion)
    es py $argv[1]
    sudo pip $argv[2..-1]
    es py $pyversion
end
