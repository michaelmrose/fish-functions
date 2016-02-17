function coverit --description 'converts image file in clipboard to pdf and prepends to pdf supplied in argv'
	set url (xclip -o)
   wget $url --output-document=cover
   convert cover cover.pdf
   set tmp /tmp/(uid)
   rm cover
   pdfcat cover.pdf $argv temp.pdf
   # pdftk cover.pdf $argv cat output temp.pdf
   mv temp.pdf $argv
   rm cover.pdf
end
