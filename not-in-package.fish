function not-in-package
	set -e $notinpackage
    for i in $PATH
        set execs $execs (find $i -executable -type f)
    end
    for i in $execs
        if not why $i > /dev/null
            set notinpackage $notinpackage $i
        end
    end
end
