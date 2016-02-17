function remove-pdf-watermark2
	set watermark "Licensed to michael rose <Michael@rosenetwork.net>"
    set file $argv[1]
    set tmp /tmp/pdf_{$file}
    pdftk $argv output $tmp uncompress
    replacestr $watermark '' $tmp
    cp $tmp out.pdf
    pdftk $tmp output $file compress
    rm $tmp
end
