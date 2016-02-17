function process-book-rar
	set tmp /tmp/thebook
    atool -X $tmp $argv
    rm $tmp/*.txt
    badd -1 $tmp
    rm -rf $tmp
    rm $argv
end
