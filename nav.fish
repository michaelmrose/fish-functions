# Defined in /home/michael/.config/fish/buffer/nav.fish @ line 2
function nav
	"Perform a series of operations to extract segments of textual data."
	  while read -l line
        set acc $acc $line
    end
    echo acc is $acc
    for field in $argv
        set c (echo $field | cut -c1)
        set r (echo $field | cut -c2-)
        switch $c
            case /
                set acc (p $acc | g $r)
            case t
                set acc (p $acc | trim)
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
