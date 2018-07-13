# Defined in /home/michael/.config/fish/buffer/pdfcat5.fish @ line 2
function pdfcat5
	set files $argv[1..-2]
  set out $argv[-1]
  qpdf $files[1] --pages (appendto $files 1-z) -- $out
end
