function make-request-payload
	set val ''
    for i in $argv
        # echo i is $i and $$i
        set val $val$i=$$i\&
    end
    # echo v is $val
    set val (shorten-string 1 $val)
    echo $val
end
