function display-in-editor
	set tmp /tmp/view
    rm $tmp
    for i in $argv
        echo $i >> $tmp
    end
    eval $EDITOR $tmp
end
