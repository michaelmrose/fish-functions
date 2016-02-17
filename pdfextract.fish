function pdfextract --description 'replaces pdf with range of pdf defined in args'
	set file $argv[1]
    set tmp /tmp/(uid)
    set range $argv[2]
    set range (echo $range | sed 's#end#z#')
    qpdf $file --pages $file $range -- $tmp
    mv $tmp $file
end
