function p
    if test -f $argv
        println (cat $argv)
    else
        println $argv;
    end
end
