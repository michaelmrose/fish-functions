function pdfcat
	set files $argv[1..-2]
  set out $argv[-1]
  eval qpdf $files[1] --pages (appendto $files 1-z) -- $out
end
