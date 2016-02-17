function pathof
	set partialpath (pwd)/$argv
    set fullpath $argv
    if test -f $partialpath
        echo $partialpath
    else if test -f $fullpath
        echo $fullpath
    else
        echo not a file!
    end
end
