function bright
	if test (count $argv) -eq 1
    set displays (get-connected-displays)
  else
    set displays $argv[2]
  end
  set vals (apply-to-list "calc-brightness $argv" $displays)
  set -U BRIGHTS (apply-to-list "multiply 100" $vals)
  set cnt (count $displays)
  set com "xrandr"
  for i in (seq $cnt)
    set com $com --output $displays[$i] --brightness $vals[$i]
  end
  eval $com
end
