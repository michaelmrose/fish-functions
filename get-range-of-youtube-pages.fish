function get-range-of-youtube-pages
	set p 1
    set q ''
    set results ''
    for i in (getvariables $argv)
        set val (splitwords-first-then-rest $i)
        set $val[1] $val[2]
    end
    echo p is $p and q is $q
    # for i
end
