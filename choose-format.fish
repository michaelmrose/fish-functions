function choose-format --description 'for the given list of formats in preferential order return the first that exists for the given book'
	set formats pdf epub mobi djvu lit chm txt
    set name $argv

    for i in $formats
        if test -f $name.$i
            echo $name.$i
            return 0
        end
    end
    return 1
end
