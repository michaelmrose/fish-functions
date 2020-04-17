# Defined in /home/michael/.config/fish/buffer/hexdigit.fish @ line 1
function hexdigit
    set digit $argv[1]
    if test $digit -lt 10
        echo $digit
    else
        switch $digit
            case 10
                echo A
            case 11
                echo B
            case 12
                echo C
            case 13
                echo D
            case 14
                echo E
            case 15
                echo F
        end
    end
end
