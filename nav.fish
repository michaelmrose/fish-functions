# Defined in /home/michael/.config/fish/buffer/nav.fish @ line 2
function nav
	while read -l line
        set acc $acc
    end
    for field in $argv
        set c (echo $field | cut -c1)
        set r (echo $field | cut -c2-)
        switch $c
            case l
                set acc (p $acc | lines $r)
            case n
                set acc (p $acc | nth $r)
            case u
                set acc (p $acc | unwrap $r)
        end
    end
    p $acc
end
