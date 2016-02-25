function bright
	if test (count $argv) -eq 1
    set displays (get-connected-displays)
    set vals (apply-to-list "calc-brightness $argv" $displays)
  else
    set displays $argv[2]
    set vals (calc-brightness $argv[1] $argv[2])
  end
  set cnt (count $displays)
  set com "xrandr"
  for i in (seq $cnt)
    set com $com --output $displays[$i] --brightness $vals[$i]
  end
  eval $com
  update-brights &
end
