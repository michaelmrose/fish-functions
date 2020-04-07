# Defined in /home/michael/.config/fish/buffer/ws2.fish @ line 2
function ws2
    switch $argv
        case a
            set target 1
        case b
            set target 2
        case c
            set target 3
        case d
            set target 4
        case e
            set target 5
        case f
            set target 6
        case g
            set target 7
        case h
            set target 8
        case i
            set target 9
        case j
            set target 10
        case k
            set target 11
        case l
            set target 12
        case m
            set target 13
        case n
            set target 14
        case o
            set target 15
        case p
            set target 16
        case q
            set target 17
        case r
            set target 18
        case s
            set target 19
        case t
            set target 20
        case u
            set target 21
        case v
            set target 22
        case w
            set target 23
        case x
            set target 24
        case y
            set target 25
        case z
            set target 26
    end

    echo $target:$argv
    i3-msg workspace $target:$argv
end
