function share
    if test (count $argv) -eq 1
	set sharepath $argv[1]
	set options rw,insecure
    else
	set sharepath $argv[1]
	set options $argv[2]
    end
    sudo zfs set sharenfs="$options" $sharepath
end
