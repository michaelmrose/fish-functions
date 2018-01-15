# Defined in /home/michael/.config/fish/buffer/pdfcat2_pdfcat3.fish @ line 18
function pdfcat3
	set files $argv[1..-2]
  set out $argv[-1]
  for i in $files
    set acc $acc $i 1-z
  end
  qpdf --pages $acc -- $out
end
