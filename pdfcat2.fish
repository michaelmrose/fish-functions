# Defined in /home/michael/.config/fish/buffer/pdfcat2_pdfcat3.fish @ line 2
function pdfcat2
	if test (count $argv) -eq 3
	  set file1 $argv[1]
    set file2 $argv[2]
    set tmp /tmp/(uid)
    set output $argv[3]
    qpdf $file1 --pages $file1 1-z $file2 1-z -- $tmp
    mv $tmp $output
  else
    set tmp /tmp/(uid)
    pdfcat2 $argv[1] $argv[2] $tmp
    pdfcat2 $tmp $argv[2..-1]
  end
end
