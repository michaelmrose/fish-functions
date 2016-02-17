function endswith
	set lst (echo $argv[2..-1] | rev)
    startswith $argv[1] $lst
end
