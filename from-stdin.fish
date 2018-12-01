# Defined in /home/michael/.config/fish/functions/from-stdin.fish @ line 2
function from-stdin
	#takes a single argument list FN and writes from stdin to a temp file TMP
    #evaluates FN with TMP as an argument.
    set tmp /tmp/stdin-(uid)
	  if test -f $tmp
        rm $tmp
    end
    rm $tmp
    while read -l line
        echo $line >> $tmp
    end
    # emacsclient -nw $tmp
    eval $argv $tmp
    cat $tmp
    rm $tmp
end
