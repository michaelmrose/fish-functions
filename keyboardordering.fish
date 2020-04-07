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
            set target 11
        case 2
            set target 12
        case 3
            set target 13
        case 4
            set target 14
        case 5
            set target 15
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
            set target 22
        case 7
            set target 23
        case 8
            set target 24
        case 9
            set target 25
        case 0
            set target 26
        case "*"

        echo $argv
        return 0
    end
    echo {$target}:{$argv}
end
