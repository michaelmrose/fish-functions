# Defined in /home/michael/.config/fish/buffer/nav.fish @ line 2
function nav
	while read -l line
        set acc $acc $line
    end
    for field in $argv
        set c (echo $field | cut -c1)
        set r (echo $field | cut -c2-)
        switch $c
            case /
                set acc (p $acc | g $r)
            case e
                set rest (echo $r | cut -c2-)
                set acc (p $acc | each $rest)
            case c
                set second (echo $r | cut -c1)
                set rest (echo $r | cut -c2-)
                set acc (p $acc | cut -d $second -f $rest)
            case t
                set acc (p $acc | trim)
            case l
                set acc (p $acc | lines $r)
            case =
                set acc (p $acc | string match $r)
            case n
                set acc (p $acc | nth $r)
            case u
                set acc (p $acc | unwrap $r)
            case s
                if exists $r
                    set acc (p $acc | sort -$r)
                else
                    set acc (p $acc | sort)
                end
            case U
                set acc (p $acc | sort -u)
        end
    end
    p $acc
end
