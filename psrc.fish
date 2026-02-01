function psrc
    set t (typeof $argv)
    switch t
        case file
            bat (which $argv)
        case fn
            type $argv
    end
end
