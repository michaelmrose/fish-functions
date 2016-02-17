function pdfcat
	set file1 $argv[1]
    set file2 $argv[2]
    set tmp /tmp/(uid)
    set output $argv[3]
    qpdf $file1 --pages $file1 1-z $file2 1-z -- $tmp
    mv $tmp $output
end
