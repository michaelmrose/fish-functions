function concatpdf
	set out $argv[1]
  set files $argv[2..-1]
  set com qpdf --empty --pages
  for f in $files
    set com $com $f 1-z
  end
  set com $com -- $out
  eval $com
end
