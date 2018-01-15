# Defined in /home/michael/.config/fish/buffer/pdfcat3_pdfcat4.fish @ line 2
function pdfcat3
	set files $argv[1..-2]
  set out $argv[-1]
  for i in $files
    set acc $acc $i 1-z
  end
  qpdf $files[1] --pages $acc -- $out
end
