# Defined in /home/michael/.config/fish/buffer/pdfcat4.fish @ line 2
function pdfcat4
	set files $argv[1..-2]
  set out $argv[-1]
  qpdf $files[1] --pages (zip-lists $files  (repeat (count $files) 1-z) | condense_lines) -- $out
end
