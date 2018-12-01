# Defined in /home/michael/.config/fish/buffer/from-stdin.fish @ line 3
function from-stdin
	if test -f $tmp
        rm $tmp
    end
    set tmp /tmp/stdin-(uid)
    rm $tmp
    while read -l line
        echo $line >> $tmp
    end
    # emacsclient -nw $tmp
    eval $argv $tmp
    cat $tmp
    rm $tmp
end
