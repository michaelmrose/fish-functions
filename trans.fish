function trans
	set id (wininfo id dec)

    for i in (getvariables $argv)
        set val (explode $i)
        set $val[1] $val[2]
    end

    set val (stripsign $argv[1])
    set val (wcalc -q "$val / 100")

    switch (car $argv[1])
        case +
            set endofcom --inc $val
        case -
            set endofcom --dec $val
        case "*"
            set endofcom $val
    end
    set com transset -i $id $endofcom
    eval $com
end
