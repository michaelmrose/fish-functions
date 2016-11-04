function badd --description 'add one or more books wherein the book consists of a file or an archive containing one or more formats of the same book'
	for i in $argv
        set tmp /tmp/thebook
        mkdir $tmp
        set archives rar

        if contains (get-ext $i) $archives
            atool -X $tmp $i
            if exists (ls $tmp | gr '.*\.txt$' )
              rm $tmp/*.txt
            end
        else
            mv $i $tmp/
        end
        calibredb add -1 $tmp
        rm -rf $tmp
        # rm $i
    end
end
