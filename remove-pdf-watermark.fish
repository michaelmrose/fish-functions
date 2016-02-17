function remove-pdf-watermark --description 'removes all watermarks from text of pdf'
	set file $argv
    set tmp /tmp/pdf_(uid)
    set watermarks[1] "www.it-ebooks.info"
    set watermarks[2] 'Licensed to michael rose'
    set watermarks[3] '.*rosenetwork.net.*'
    # set watermarks[3] '<Michael@rosenetwork.net>'
    # set watermarks[2] 'Licensed to michael rose <Michael@rosenetwork.net>'
    # set watermarks[3] '<Michael@rosenetwork.net>'
    qpdf --stream-data=uncompress "$file" "$tmp" 
    # for i in $watermarks
    #     replacestr "$i" '' "$tmp"
    # end
    cp $tmp abook.txt
    qpdf --stream-data=compress "$tmp" "$file"
end
