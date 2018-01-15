# Defined in /home/michael/.config/fish/buffer/pdfcat3_pdfcat4.fish @ line 18
function pdfcat5
	set files $argv[1..-2]
  set out $argv[-1]
  echo qpdf $files[1] --pages (appendto $files 1-z) -- $out
end
