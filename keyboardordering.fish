# Defined in /usr/home/michael/.config/fish/buffer/keyboardordering.fish @ line 2
function keyboardordering
    switch $argv
        case a
            set target 1
        case s
            set target 2
        case d
            set target 3
        case f
            set target 4
        case g
            set target 5
        case z
            set target 6
        case x
            set target 7
        case c
            set target 8
        case v
            set target 9
        case b
            set target 10
        case 1
            set target 51
        case 2
            set target 52
        case 3
            set target 53
        case 4
            set target 54
        case 5
            set target 55
        case h
            set target 16
        case j
            set target 17
        case k
            set target 18
        case l
            set target 19
        case n
            set target 20
        case m
            set target 21
        case 6
            set target 56
        case 7
            set target 57
        case 8
            set target 58
        case 9
            set target 59
        case 0
            set target 60
        case "*"

        echo $argv
        return 0
    end
    echo {$target}:{$argv}
end
