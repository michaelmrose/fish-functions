function shorten-string
	set str $argv[2..-1]
    set initialsize (sizeof $str)
    set toremove $argv[1]
    set size (math $initialsize - $toremove)
    echo $str | cut -c1-$size
end
